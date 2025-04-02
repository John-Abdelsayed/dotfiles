import smtplib
from email.message import EmailMessage

msg = EmailMessage()
msg.set_content("Hey there! This is an automated email.")
msg["Subject"] = "Python Scripting Automation"
msg["From"] = "your_email@example.com"
msg["To"] = "recipient@example.com"

server = smtplib.SMTP_SSL("smtp.gmail.com", 465)
server.login("your_email@example.com", "your_password")
server.send_message(msg)
server.quit()
