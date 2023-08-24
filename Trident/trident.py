from flask import *
import os
import pymysql
from flask import Flask
from flask import url_for
from flask import request
from passlib.hash import sha256_crypt
import re
from flask import render_template

app = Flask(__name__, template_folder='templates', static_folder='static')
app.config['SECRET_KEY'] = 'secret!'

@app.route('/index')
def index():
    background_images_folder = os.path.join(app.static_folder, 'bgimg')
    image_files = [f for f in os.listdir(background_images_folder) if f.endswith(('jpg', 'png', 'jpeg'))]
    if not image_files:
        return "No background images found."
    random_image = random.choice(image_files)
    background_image_url = f"static/bgimg/{random_image}"
    print(background_image_url)  # Check if the URL is correct
    return render_template('index.html', background_image_url=background_image_url)

@app.route('/')

def home():
    return render_template('home.html')

@app.route('/maps')

def maps():
    return render_template('maps.html')

@app.route('/sports')

def sports():
    return render_template('sports.html')

@app.route('/login')

def login():
    return render_template('login.html')


@app.route('/signup')

def signup():
    return render_template('signup.html')

@app.route('/contact')

def contact():
    return render_template('contact.html')


def Connection():
    server = 'localhost'
    db = 'trident'
    user = 'Robert'
    password = 'Rob01ert'

    conn = pymysql.connect(host=server, user=user, password=password, database=db)
    conn.autocommit(True)
    return conn

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
        cursor.execute('SELECT * FROM users WHERE username = %s', (username,))
        users = cursor.fetchone()
        if users:
            msg = 'Account already exists!'
        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            msg = 'Invalid email Address!'
        elif not re.match(r'[A-Za-z0-9]+', username):
            msg = 'Username must contain only characters and numbers!'
        elif not username or not password or not email:
            msg = 'Please fill out the form!'
        else:
            cursor.execute("INSERT INTO users (username, FirstName, LastName, Address, City, password, email) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                           (username, FirstName, LastName, Address, city, password, email))
            conn.commit()
            msg = 'Registration successful!'
            return redirect(url_for('login'))

    return render_template('registration.html', msg=msg)

if __name__ == '__main__':
    app.run(debug=True)
