from app.controllers import get_beans
from flask import Blueprint, request, make_response, jsonify
import json

bp = Blueprint('main', __name__)

@bp.route('/')
def hello_world():
    return 'Hello, World!'

@bp.route('/getbeanz/<beanid>')
# request:  contains coffeeid:int
# response: json object containing info about beans with coffeeid
def getbeanz(beanid):
    print("test")
    thesebeans = get_beans(beanid)
    print(thesebeans)

    json_beans = json.dumps(thesebeans)
    return json_beans

@bp.route('/login',methods=['POST'])
# request:  contains username:string, password:string
def login():
    # TODO: Add login logic (call controller, contact db, etc.)
    data = json.loads(request.data)
    username = data['username']
    password = data['password']
    print(username,password)

    # If unsuccessful, return {"success":False}
    response_data = {'success':True,'username':username,'password':password}
    response = make_response(jsonify(response_data),200)
    response.headers['Content-Type'] = 'application/json'
    return response
