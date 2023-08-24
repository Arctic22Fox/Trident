from flask import *
import os
import pymysql
from flask import Flask
from flask import url_for
from flask import request
from passlib.hash import sha256_crypt
import re
from flask import render_template

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret!'




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


