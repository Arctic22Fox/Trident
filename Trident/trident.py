from flask import Flask, Response, render_template, request, redirect
from mimetypes import MimeTypes
import os
import random


app = Flask(__name__, template_folder='templates', static_folder='static')


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




if __name__ == '__main__':
    app.run(debug=True)

