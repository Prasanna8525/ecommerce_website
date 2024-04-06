import smtplib
from smtplib import SMTP
from email.message import EmailMessage
def adminsendmail(to,subject,body):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('pittalaprasanna33@gmail.com','zqra ysrj secz zxkw')
    msg=EmailMessage()
    msg['From']='noorjahanshaik9990@gmail.com'
    msg['Subject']=subject
    msg['To']=to
    msg.set_content(body)
    server.send_message(msg)
    server.quit()
