from flask_mail import Mail
import pymysql
mail=Mail()
class Config(object):
    def __init__(self, app):
        self.app = app
        
    DEBUG = True
    TESTING = True
    SECRET_KEY = '7ed6ee06479f2e0bcfdbbdba1ea2edc64d9d7919bb975cd22b76bddc2091a7a3'

    DB_NAME = 'trident'
    DB_USERNAME = 'Robert'
    DB_PASSWORD = 'Rob01ert'
    DB_HOST = 'localhost'
    DB_PORT = 3306

    


