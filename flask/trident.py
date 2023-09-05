from flask import Flask, Response, render_template, request, redirect
from mimetypes import MimeTypes

app = Flask(__name__, template_folder='templates', static_folder='static')

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




if __name__ == '__main__':
    app.run(debug=True)

