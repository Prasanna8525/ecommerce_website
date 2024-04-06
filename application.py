from flask import Flask,redirect,request,render_template,url_for,flash,session,send_file
#from flask_mysqldb import MySQL
import mysql.connector
import re
app=Flask(__name__)
mydb=mysql.connector.connect(host='localhost',user='root',password='anusha@1999',db='ecommerceproject')
@app.route('/')
def index():
    return render_template('welcome.html')
@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == "POST":
        name = request.form['search']
        
        # Use regex to filter names starting with specific letters
        starting_letters = name # Add your desired starting letters separated by |
        pattern = re.compile(f'^[{starting_letters}]', re.IGNORECASE)
        
        if pattern.match(name):
            cursor = mydb.cursor(buffered=True)
            cursor.execute('SELECT * FROM additems WHERE name=%s', [name])
            data = cursor.fetchall()
            print(data)
            return render_template('dashboard.html', items=data)
        else:
            # Handle the case where the input name doesn't start with the specified letters
            return render_template('invalid_input.html')  # You can create a template for this

    # Handle GET requests
    return render_template('dashboard.html')  # You can create a template for the search form
app.run(debug=True,use_reloader=True)
