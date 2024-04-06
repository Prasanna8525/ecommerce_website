from flask import Flask,redirect,request,render_template,url_for,flash,session,send_file,jsonify
#from flask_mysqldb import MySQL
import mysql.connector
from flask_session import Session
from otp import genotp
from adminotp import adotp
from itemid import itemidotp
from cmail import sendmail
from adminmail import adminsendmail
import stripe
import os
import random
from itsdangerous import TimedJSONWebSignatureSerializer as Serializer
from tokenreset import token
from admintokenreset import admintoken
from io import BytesIO
import  re
app=Flask(__name__)
# app.secret_key='hfbfe78hjefk'
app.config['SESSION_TYPE']='filesystem'
# db=os.environ['RDS_DB_NAME']
# user=os.environ['RDS_USERNAME']
# password=os.environ['RDS_PASSWORD']
# host=os.environ['RDS_HOSTNAME']
# port=os.environ['RDS_PORT']
#mysql = MySQL()
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'admin'
app.config['MYSQL_DB'] = 'emp'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# stripe.api_key='sk_test_51Oy6LoSDEdHkmMG3naSGoJv4ycQ1P8cW01YzWlMA6z5iKidaLJC8oQ7h5O4dkI0Cz57skbHyF3E79a5ysDTyA2PV00NlisoXr1'
# stripe.api_key = 'sk_test_51NTKipSDmVNK7hRpj4DLpymMTojbp0sntuHknEF9Kv3cGY79VkNbmBcfxDmTLXa9UIGKiiqp8drQQhzsjoia58Sm00Kuzg9vYt'
stripe.api_key='sk_test_51NH9ERSHahk6wnPYDNqqG9F0JmsxcTqbwkswSOVEDx2YzCk3gGzZkcCkanDDyt3wu9UvVd14hCQywqZFI2TzfMX000ZN4Te1t2'

#mydb=mysql.connector.connect(host='localhost',user='root',password='',db='',port=port)
mydb=mysql.connector.connect(host='localhost',user='root',password='admin',db='ecom')
with mysql.connector.connect(host='localhost',user='root',password='admin',db='ecom') as conn:
    cursor=conn.cursor()
    cursor.execute("create table if not exists signup(username varchar(30) primary key,mobile bigint unique,email varchar(70) unique,address varchar(200),password varchar(40))")
    cursor.execute("create table if not exists additems(itemid varchar(30) primary key,name varchar(30),discription longtext,qty varchar(20),category enum('','electronics','grocery','fashion','home'),price varchar(30))")
    cursor.execute("create table if not exists orders(ordid int primary key auto_increment, itemid varchar(30),username varchar(30),name varchar(30),qty varchar(20),total_price int,foreign key (itemid) references additems(itemid),foreign key(username) references signup(username))")
    cursor.execute("create table if not exists reviews(username varchar(30),itemid varchar(30),title tinytext,review text,rating int,foreign key(username) references signup(username) on update cascade on delete cascade,foreign key(itemid) references additems(itemid) on update cascade on delete cascade,primary key(username,itemid),date datetime default now())")   
    cursor.execute("create table if not exists adminsignup(name varchar(30),mobile bigint primary key,email varchar(50) unique,password varchar(40))")
    cursor.execute("create table if not exists contactus(name varchar(30),emailid varchar(40),message tinytext)")
Session(app)
@app.route('/')
def index():
    return render_template('welcome.html')
@app.route('/signup',methods=['GET','POST'])
def signup():
    if request.method=='POST':
        name=request.form['name']
        mobile=request.form['mobile']
        email=request.form['email']
        address=request.form['address']
        password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select email from signup')
        data=cursor.fetchall()
        cursor.execute('select mobile from signup')
        edata=cursor.fetchall()
        #print(data)
        if (mobile, ) in edata:
            flash('User already exisit')
            return render_template('signup.html')
        if (email, ) in data:
            flash('Email id already exisit')
            return render_template('signup.html')
        cursor.close()
        otp=genotp()
        subject='thanks for registering to the application'
        body=f'use this otp to register {otp}'
        sendmail(email,subject,body)
        return render_template('otp.html',otp=otp,name=name,mobile=mobile,email=email,address=address,password=password)
    else:
        return render_template('signup.html')    
@app.route('/login',methods=['GET','POST'])
def login():
    if session.get('user'):
        return redirect(url_for('home'))
    if request.method=='POST':
        username=request.form['username']
        password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select count(*) from signup where username=%s and password=%s',[username,password])
        count=cursor.fetchone()[0]
        if count==0:
            flash('Invalid email or password')
            return render_template('login.html')
        else:
            session['user']=username
            if not session.get(username):
                session[username]={}
            return redirect(url_for('home'))
    return render_template('login.html')
@app.route('/Shome')
def home():
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from additems")
    items=cursor.fetchall()
    print(items)
    return render_template('home1.html',items=items)
@app.route('/welcome')
def welcome():
    return render_template('welcome.html')
@app.route('/logout')
def logout():
    if session.get('user'):
        session.pop('user')
        return redirect(url_for('home'))
    else:
        flash('already logged out!')
        return redirect(url_for('login'))
@app.route('/otp/<otp>/<name>/<mobile>/<email>/<address>/<password>',methods=['GET','POST'])
def otp(otp,name,mobile,email,address,password):
    if request.method=='POST':
        uotp=request.form['otp']
        if otp==uotp:
            cursor=mydb.cursor(buffered=True)
            lst=[name,mobile,email,address,password]
            query='insert into signup values(%s,%s,%s,%s,%s)'
            cursor.execute(query,lst)
            mydb.commit()
            cursor.close()
            flash('Details registered')
            return redirect(url_for('login'))
        else:
            flash('Wrong otp')
            return render_template('otp.html',otp=otp,name=name,mobile=mobile,email=email,address=address,password=password)
@app.route('/addnotes',methods=['GET','POST'])
def addnotes():
    if session.get('user'):
        if request.method=='POST':
            name=request.form['name']
            mobile=request.form['mobile']
            email=request.form['email']
            address=request.form['address']
            password=request.form['password']
            cursor=mydb.cursor(buffered=True)
            email=session.get('user')
            cursor.execute('insert into signup(name,mobile,email,address,password) values(%s,%s,%s,%s,%s)',[name,mobile,email,address,password])
            mydb.commit()
            cursor.close()
            flash(f'{email} added successfully')
            return redirect(url_for('noteshome'))
        return render_template('home1.html')
    else:
        return redirect(url_for('login'))
@app.route('/forgetpassword',methods=['GET','POST'])
def forgetpassword():
    if request.method=='POST':
        email=request.form['id']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select email from signup')
        data=cursor.fetchall()
        if (email,) in data:
            cursor.execute('select email from signup where email=%s',[email])
            data=cursor.fetchone()[0]
            cursor.close()
            subject=f'Reset password for {data}'
            body=f'reset the password using -{request.host+url_for("createpassword",token=token(email,120))}'
            sendmail(data,subject,body)
            flash('Reset link sent to your mail')
            return redirect(url_for('login'))
        else:
            return 'Invalid user email'
    return render_template('forgot.html')
@app.route('/createpassword/<token>',methods=['GET','POST'])
def createpassword(token):
    try:
        s=Serializer(app.config['SECRET_KEY'])
        email=s.loads(token)['user']
        if request.method=='POST':
            npass=request.form['npassword']
            cpass=request.form['cpassword']
            if npass==cpass:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('update signup set password=%s where email=%s',[npass,email])
                mydb.commit()
                return 'Password reset successfull'
            else:
                return 'password mismatch'
        return render_template('newpassword.html')
    except:
        return 'link expired try again'   
@app.route('/adminsignup',methods=['GET','POST'])
def adminsignup():
    if request.method=='POST':
        name=request.form['name']
        mobile=request.form['mobile']
        email=request.form['email']
        password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select email from adminsignup')
        data=cursor.fetchall()
        cursor.execute('select mobile from adminsignup')
        edata=cursor.fetchall()
        #print(data)
        if (mobile, ) in edata:
            flash('User already exisit')
            return render_template('adminsignup.html')
        if (email, ) in data:
            flash('Email id already exisit')
            return render_template('adminsignup.html')
        cursor.close()
        adminotp=adotp()
        subject='thanks for registering to the application'
        body=f'use this adminotp to register {adminotp}'
        sendmail(email,subject,body)
        return render_template('adminotp.html',adminotp=adminotp,name=name,mobile=mobile,email=email,password=password)
    else:
        return render_template('adminsignup.html')    
@app.route('/adminlogin',methods=['GET','POST'])
def adminlogin():
    if session.get('admin'):
        return redirect(url_for('adminhome'))
    if request.method=='POST':
        email=request.form['email']
        password=request.form['password']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select count(*) from adminsignup where email=%s and password=%s',[email,password])
        count=cursor.fetchone()[0]
        if count==0:
            flash('Invalid email or password')
            return render_template('adminlogin.html')
        else:
            session['admin']=email
            return redirect(url_for('adminhome'))
    return render_template('adminlogin.html')
@app.route('/adminhome')
def adminhome():
    if session.get('admin'):
        return render_template('admindashboard.html')
    else:
        #flash('login first')
        return redirect(url_for('adminlogin'))
@app.route('/adminlogout')
def adminlogout():
    if session.get('admin'):
        session.pop('admin')
        return redirect(url_for('adminlogin'))
    else:
        flash('already logged out!')
        return redirect(url_for('adminlogin'))
@app.route('/adminotp/<adminotp>/<name>/<mobile>/<email>/<password>',methods=['GET','POST'])
def adminotp(adminotp,name,mobile,email,password):
    if request.method=='POST':
        uotp=request.form['adminotp']
        if adminotp==uotp:
            cursor=mydb.cursor(buffered=True)
            lst=[name,mobile,email,password]
            query='insert into adminsignup values(%s,%s,%s,%s)'
            cursor.execute(query,lst)
            mydb.commit()
            cursor.close()
            flash('Details registered')
            return redirect(url_for('adminlogin'))
        else:
            flash('Wrong otp')
            return render_template('adminotp.html',adminotp=adminotp,name=name,mobile=mobile,email=email,password=password)
@app.route('/adminnotes',methods=['GET','POST'])
def adminnotes():
    if session.get('admin'):
        if request.method=='POST':
            name=request.form['name']
            mobile=request.form['mobile']
            email=request.form['email']
            password=request.form['password']
            cursor=mydb.cursor(buffered=True)
            email=session.get('admin')
            cursor.execute('insert into adminsignup(name,mobile,email,password) values(%s,%s,%s,%s)',[name,mobile,email,password])
            mydb.commit()
            cursor.close()
            flash(f'{email} added successfully')
            return redirect(url_for('noteshome'))
        return render_template('adminhome.html')
    else:
        return redirect(url_for('adminlogin'))
@app.route('/adminforgetpassword',methods=['GET','POST'])
def adminforgetpassword():
    if request.method=='POST':
        email=request.form['id']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select email from adminsignup')
        data=cursor.fetchall()
        if (email,) in data:
            cursor.execute('select email from adminsignup where email=%s',[email])
            data=cursor.fetchone()[0]
            cursor.close()
            subject=f'Reset password for {data}'
            body=f'reset the password using -{request.host+url_for("admincreatepassword",admintoken=admintoken(email,120))}'
            sendmail(data,subject,body)
            flash('Reset link sent to your mail')
            return redirect(url_for('adminlogin'))
        else:
            return 'Invalid user email'
    return render_template('forgot.html')
@app.route('/admincreatepassword/<admintoken>',methods=['GET','POST'])
def admincreatepassword(admintoken):
    try:
        s=Serializer(app.config['SECRET_KEY'])
        email=s.loads(admintoken)['admin']
        if request.method=='POST':
            npass=request.form['npassword']
            cpass=request.form['cpassword']
            if npass==cpass:
                cursor=mydb.cursor(buffered=True)
                cursor.execute('update adminsignup set password=%s where email=%s',[npass,email])
                mydb.commit()
                return 'Password reset successfull'
            else:
                return 'password mismatch'
        return render_template('adminnewpassword.html')
    except:
        return 'link expired try again'
@app.route('/additems',methods=['GET','POST'])
def additems():
    if session.get('admin'):
        if request.method=="POST":
            name=request.form['name']
            discription=request.form['desc']
            quantity=request.form['qty']
            category=request.form['category']
            price=request.form['price']
            image=request.files['image']
            cursor=mydb.cursor(buffered=True)
            email=session.get('admin')
            idotp=itemidotp()
            filename=idotp+'.jpg'
            cursor.execute('insert into additems(itemid,name,discription,qty,category,price) values(%s,%s,%s,%s,%s,%s)',[idotp,name,discription,quantity,category,price])
            mydb.commit()
            print(filename)
            path=os.path.dirname(os.path.abspath(__file__))
            static_path=os.path.join(path,'static')
            image.save(os.path.join(static_path,filename))
            flash('success')
        return render_template('items.html')
@app.route('/dashboardpage/')
def dashboardpage():
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from additems")
    items=cursor.fetchall()
    print(items)
    return render_template('dashboard.html',items=items)
@app.route('/homepage/<category>')
def homepage(category):
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from additems where category=%s",[category])
    items=cursor.fetchall()
    return render_template('dashboard.html',items=items)
@app.route('/status')
def status():
    cursor=mydb.cursor(buffered=True)
    cursor.execute('select itemid,name,discription,qty,category,price from additems')
    items=cursor.fetchall()
    return render_template('status.html',items=items)
@app.route('/updateproducts/<itemid>',methods=['GET','POST'])
def updateproducts(itemid):
    if session.get('admin'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select name,discription,qty,category,price from additems where itemid=%s',[itemid])
        items=cursor.fetchone()
        cursor.close()
        if request.method=='POST':
            name=request.form['name']
            discription=request.form['discription']
            quantity=request.form['qty']
            category=request.form['category']
            price=request.form['price']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('update additems set name=%s,discription=%s,qty=%s,category=%s,price=%s  where itemid=%s',[name,discription,quantity,category,price,itemid])
            mydb.commit()
            cursor.close()
            return redirect(url_for('adminhome'))
        return render_template('updateproducts.html',items=items)
    else:
        return redirect(url_for('adminlogin'))
@app.route('/deleteproducts/<itemid>')
def deleteproducts(itemid):
    cursor=mydb.cursor(buffered=True)
    cursor.execute('delete from additems where itemid=%s',[itemid])
    mydb.commit()
    cursor.close()
    path=os.path.dirname(os.path.abspath(__file__))
    static_path=os.path.join(path,'static')
    filename=itemid+'.jpg'
    os.remove(os.path.join(static_path,filename))
    flash('deleted')
    return redirect(url_for('status'))
@app.route('/cart/<itemid>/<name>/<discription>/<category>/<price>')
def cart(itemid,name,discription,category,price):
    if not session.get('user'):
        return redirect(url_for('login'))
    if itemid not in session[session.get('user')]:
        session[session.get('user')][itemid]=[name,discription,1,price]
        session.modified=True
        flash(f'{name} added to cart')
        return redirect(url_for('homepage',category=category))
    session[session.get('user')][itemid][2]+=1
    flash('Item already in cart')
    return redirect(url_for('homepage',category=category))
@app.route('/viewcart')
def viewcart():
    if not session.get('user'):
        return redirect(url_for('login'))
    items=session.get(session.get('user')) if session.get(session.get('user')) else 'empty'
    if items=='empty':
        return 'no products in cart'
    return render_template('cart.html',items=items)
@app.route('/remcart/<item>')
def rem(item):
    if session.get('user'):
        session[session.get('user')].pop(item)
        return redirect(url_for('viewcart'))
    return redirect(url_for('login'))
@app.route('/dis/<itemid>')
def dis(itemid):
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from additems where itemid=%s",[itemid])
    items=cursor.fetchone()
    return render_template('discription.html',items=items)
@app.route('/orders')
def orders():
    if session.get('user'):
        cursor=mydb.cursor(buffered=True)
        cursor.execute('select * from orders where username=%s', (session['user'],))
        orders=cursor.fetchall()
        return render_template('orders.html',orders=orders)
    
# @app.route('/pay/<itemid>/<name>/<int:price>',methods=['POST'])
# def pay(itemid,price,name):
#     if session.get('user'):
#         q=int(request.form['qty'])
#         username=session.get('user')
#         total=price*q
#         checkout_session=stripe.checkout.Session.create(
#             success_url=url_for('success',itemid=itemid,name=name,q=q,total=total,_external=True),
#             line_items=[
#                 {
#                     'price_data': {
#                         'product_data': {
#                             'name': name,
#                         },
#                         'unit_amount': price*100,
#                         'currency': 'inr',
#                     },
#                     'quantity': q,
#                 },
#                 ],
#             mode="payment",)
#         return redirect(checkout_session.url)
#     else:
#         return redirect(url_for('login'))

@app.route('/pay/<itemid>/<name>/<int:price>', methods=['GET', 'POST'])
def pay(itemid,price,name):
    try:
        if session.get('user'):
            q=int(request.form['qty'])
            username=session.get('user')
            total=price*q
            checkout_session = stripe.checkout.Session.create(
                payment_method_types=['card'],
                line_items=[
                    {
                        'price_data': {
                            'currency': 'inr',
                            'product_data': {
                                'name': name,
                            },
                            'unit_amount': price*100,  # Price in paise (1500 paise = 15 INR)
                        },
                        'quantity': q,
                    },
                ],
                mode='payment',
                success_url=url_for('success',itemid=itemid,name=name,q=q,total=total, _external=True) + '?session_id={CHECKOUT_SESSION_ID}',
                cancel_url=url_for('cancel',itemid=itemid,name=name,q=q,total=total, _external=True),
            )
            return redirect(checkout_session.url, code=303)
        else:
            return redirect(url_for('login'))
    except Exception as e:
        return jsonify(error=str(e)), 403


# @app.route('/pay/<itemid>/<name>/<int:price>', methods=['POST'])
# def pay(itemid, price, name):
#     if session.get('user'):
#         q = int(request.form['qty'])
#         username = session.get('user')
#         total = price * q
        
#         checkout_session = stripe.checkout.Session.create(
#             success_url=url_for('success', itemid=itemid, name=name, q=q, total=total, _external=True),
#             line_items=[
#                 {
#                     'price_data': {
#                         'product_data': {
#                             'name': name,
#                         },
#                         'unit_amount': price * 100,
#                         'currency': 'inr',
#                     },
#                     'quantity': q,
#                 },
#             ],
#             mode="payment",
#             customer_email='ramtharaknadhalla@gmail.com',  # Assuming user's email as customer email
#             shipping_address_collection={
#                 'allowed_countries': ['IN'],  # Specify the allowed countries for shipping
#             },
#             payment_intent_data={
#                 'description': f"Payment for {q} {name}(s)",
#             }
#         )
#         return redirect(checkout_session.url)
#     else:
#         return redirect(url_for('login'))
        
@app.route('/success/<itemid>/<name>/<q>/<total>')
def success(itemid, name, q, total):
    if session.get('user'):
        print(session.get('user'))
        cursor = mydb.cursor(buffered=True)
        cursor.execute('insert into orders(itemid, name, qty, total_price, username) values(%s, %s, %s, %s, %s)', [itemid, name, q, total, session.get('user')])
        mydb.commit()
        return render_template('order.html')
    return redirect(url_for('login'))

@app.route('/cancel/<itemid>/<name>/<q>/<total>')
def cancel(itemid, name, q, total):
    return render_template('payment.html')

@app.route('/review/<itemid>',methods=['GET','POST'])
def review(itemid):
    if session.get('user'):
        if request.method=='POST':
            print(request.form)
            userid=session.get('user')
            title=request.form['title']
            decs=request.form['decs']
            rate=request.form['rate']
            cursor=mydb.cursor(buffered=True)
            cursor.execute('insert into reviews(username,itemid,title,review,rating) values(%s,%s,%s,%s,%s)',[userid,itemid,title,decs,rate])
            mydb.commit()
            flash('thank you for your valuble feedback')
        return render_template('review.html')
    else:
        return redirect(url_for('login'))
@app.route('/readreview/<itemid>')
def readreview(itemid):
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from reviews where itemid=%s",[itemid])
    reviews=cursor.fetchall()
    return render_template('readreview.html',reviews=reviews)
@app.route('/search',methods=['GET','POST'])
def search():
    if request.method == "POST":
        name = request.form['search']
        print(name)
        # Use regex to filter names starting with specific letters
        starting_letters = '[A-Za-z0-9]' # Add your desired starting letters separated by |
        pattern = re.compile(f'^{starting_letters}', re.IGNORECASE)
        print(pattern)
        if pattern.match(name):
            cursor = mydb.cursor(buffered=True)
            cursor.execute('SELECT * FROM additems WHERE name LIKE %s', [name + '%'])
            data = cursor.fetchall()
            print(data)
            return render_template('dashboard.html', items=data)
        else:
            # Handle the case where the input name doesn't start with the specified letters
            return 'invalid'  # You can create a template for this

    # Handle GET requests
    return render_template('home1.html')  # You can create a template for the search form

@app.route('/contactus',methods=['GET','POST'])
def contactus():
    if request.method=="POST":
        print(request.form)
        name=request.form['name']
        emailid=request.form['emailid']
        message=request.form['message']
        cursor=mydb.cursor(buffered=True)
        cursor.execute('insert into contactus(name,emailid,message) values(%s,%s,%s)',[name,emailid,message])
        mydb.commit()
    return render_template('contactus.html')
@app.route('/readcontactus')
def readcontactus():
    cursor=mydb.cursor(buffered=True)
    cursor.execute("select * from contactus ")
    contact=cursor.fetchall()
    return render_template('readcontactus.html',contact=contact)   
if __name__=="__main__":
    app.run(debug=True,use_reloader=True)





