from flask import *
import os
import logging
import pymysql
from passlib.hash import sha256_crypt
import re
import random
from flask import flash
from forms import ContactForm
from flask_mail import Mail, Message

app = Flask(__name__, template_folder='templates', static_folder='static')
app.secret_key = 'secret!'

mail = Mail()
app.config["MAIL_SERVER"] = "smtp.gmail.com"
app.config["MAIL_PORT"] = 465
app.config["MAIL_USE_SSL"] = True
app.config["MAIL_USERNAME"] = 'tr1d3nt2023@gmail.com'
app.config["MAIL_PASSWORD"] = 'iqsyfstvqdvbbcac'
mail.init_app(app)

@app.route('/')
def home():
    football = []
    icehockey = []
    rugby = []
    if 'loggedin' in session and session['loggedin'] == True:
        account_name = 'username'
    else:
        account_name = 'Login'
    conn = Connection()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM rugby_fixtures")
    for row in cursor.fetchall():
        rugby.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row[4], 'venue':row[2]})
        football.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row[4], 'venue':row[2]})
        icehockey.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row[4], 'venue':row[2]})


    return render_template('home.html', title='Home', login=url_for('login'), Account=account_name, rugby=rugby, football=football, icehockey=icehockey)

@app.route('/maps')

def maps():
    return render_template('maps.html', title ='Maps')

@app.route('/sports')

def sports():
    return render_template('sports.html', title ='Sports')

@app.route('/football')

def football():
    return render_template('football.html', title ='Football')

@app.route('/icehockey')

def icehockey():
    return render_template('icehockey.html', title ='Ice Hockey')

@app.route('/rugby')

def rugby():
    return render_template('rugby.html', title ='Rugby')

@app.route('/signup')

def signup():
    return render_template('signup.html', title ='Signup')

app.route('/football')
def football():
    return render_template('football.html', title ='Football')

@app.route('/faq')

def faq():
    return render_template('faq.html', title ='faq')

@app.route('/privacypolicy')

def privacypolicy():
    return render_template('privacypolicy.html', title ='privacy-policy')

@app.route('/terms')

def terms():
    return render_template('terms.html', title ='terms')

@app.route('/contact', methods=['GET', 'POST'])
def contact():
  form = ContactForm()
  if request.method == 'POST':
    if form.validate() == False:
      flash('All fields are required.')
      return render_template('contact.html', form=form)
    else:
      msg = Message(form.subject.data, sender='contact@example.com', recipients=[app.config['MAIL_USERNAME']])
      msg.body = """ 
From: %s &lt;%s&gt; 
%s 
""" % (form.name.data, form.email.data, form.message.data)
      mail.send(msg)
      return render_template('contact.html', success=True)
  elif request.method == 'GET':
    return render_template('contact.html', form=form, title ='Contact')

def Connection():
    server = 'localhost'
    db = 'trident'
    user = 'Robert'
    password = 'Rob01ert'
    conn = pymysql.connect(host=server, user=user, password=password, database=db)
    conn.autocommit(True)
    return conn


@app.route('/login', methods=['GET', 'POST'])
def login():
    msg = ''
    
    if request.method == 'POST':
        username = request.form['username']
        password_candidate = request.form['password']
        conn = Connection()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM users WHERE username = %s', (username,))
        users = cursor.fetchone()
        
        app.logger.debug(f"Users: {users}")  # Add this line for debugging
        
        if users:
            password = users[6]  # Assuming password is in the 7th column
            app.logger.debug(f"Stored Password: {password}")  # Add this line for debugging
            
            if sha256_crypt.verify(password_candidate, password):
                session['logged_in'] = True
                session['username'] = username
# must create connection for all sports
                rugby = []
                conn = Connection()
                cursor = conn.cursor()
                cursor.execute("SELECT * FROM rugby_fixtures")
                for row in cursor.fetchall():
                    rugby.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row[4], 'venue':row[2]})
                    football.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row[4]})
                    icehockey.append({'address': str(row[3]).split(',')[0] + ' ' + str(row[3]).split(',')[2], 'Home_Team': row[0], 'Away_Team': row[1], 'date': row[5], 'time': row})
                app.logger.debug("Login successful!")  # Add this line for debugging
                return render_template('home.html', login = url_for('userpage'), Account = 'My Account', rugby=rugby, football=football, icehockey=icehockey)
            else:
                flash('Invalid password!', 'error')
        else:
            flash('Username not found!', 'error')
    
    return render_template('login.html', msg=msg, title ='login', login = url_for('login'), Account = 'Login')
    
@app.route('/logout', methods = ['POST', 'GET'])
def logout():
    session.pop('logged_in', None)
    flash('You were logged out.')
    if request.method == 'POST':
        return render_template('login.html', msg='Successfully logged out!', title ='login', login = url_for('login'), Account = 'Login')
    return render_template('login.html', msg='', title ='login', login = url_for('login'), Account = 'Login')
    

@app.route('/registration', methods=['GET', 'POST'])
def registration():
    msg = ''  
    
    if request.method == 'POST':
        username = request.form['username']
        FirstName = request.form['FirstName']
        LastName = request.form['LastName']
        Address = request.form['Address']
        city = request.form['city']
        password = sha256_crypt.encrypt(request.form['password'])
        email = request.form['email']
        
        conn = Connection()
        cursor = conn.cursor()
        
        # Check if the username already exists
        cursor.execute('SELECT * FROM users WHERE username = %s', (username,))
        users = cursor.fetchone()
        
        if users:
            flash('Account already exists!', 'error')

        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            flash('Invalid email Address!', 'error')
        elif not re.match(r'[A-Za-z0-9]+', username):
            flash('Username must contain only characters and numbers!', 'error')
        elif not (username and FirstName and LastName and Address and city and password and email):
            flash('Please fill out the form!', 'error')
        else:
            # Insert the new user's information into the database
            cursor.execute("INSERT INTO users (username, FirstName, LastName, Address, City, password, email) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                           (username, FirstName, LastName, Address, city, password, email))
            conn.commit()
            msg = 'Registration successful!'
            
            # Redirect the user to the login page after successful registration
            return render_template('login.html', message=msg)

    return render_template('registration.html', msg=msg, title ='Registration')





@app.route('/userpage')
def userpage():
    if 'username' in session and session['logged_in']:
        username = session['username']
        conn = Connection()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM users WHERE username = %s', (username,))
        users = cursor.fetchone()
        if users:
            return render_template('userpage.html', users=users, title ='Userpage')
    return redirect(url_for('login'))


@app.errorhandler(404)
def not_found(e):
  return render_template("404.html", title ="404 what the duck")


if __name__ == '__main__':
    app.run(debug=True)
