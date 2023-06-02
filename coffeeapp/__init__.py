from flask import Flask
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
cors = CORS(app)

# Connect to db here
db = "dbname='coffeedb' user='postgres' host='127.0.0.1' password = 'UIS'"
conn = psycopg2.connect(db)

from coffeeapp.beans.routes import bp
app.register_blueprint(bp)