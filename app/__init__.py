from flask import Flask
from app.beans.routes import bp
from flask_cors import CORS

app = Flask(__name__)
cors = CORS(app)
app.register_blueprint(bp)

# Connect to db here
#db = "dbname='asdf' user='postgres' host='127.0.0.1' password = 'UIS'"
#conn = psycopg2.connect(db)