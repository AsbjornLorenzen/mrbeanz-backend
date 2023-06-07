from coffeeapp.controllers import get_beans, beans_filter, get_ratingsC, rate_coffeeC
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
    thesebeans = get_beans(beanid)
    print(thesebeans)
    json_beans = json.dumps(thesebeans)
    return json_beans

@bp.route('/getRatings/<coffee_id>')
# request:  contains coffeeid:int
# response: json object containing info about beans with coffeeid
def getRatings(coffee_id):
    ratings = get_ratingsC(coffee_id)
    print(ratings)
    json_ratings = json.dumps(ratings, default=str)
    return json_ratings

@bp.route('/rate', methods=['POST'])
# request:  contains userid:int, coffeeid:int, rating:int, flavorprofile:string, sweetness:int, body:int, acidity:int, bitterness:int, date:string
def rateCoffee():
    data = json.loads(request.data)
    userid = data['userid']
    coffeeid = data['coffeeid']
    rating = data['rating']
    flavorprofile = data['flavorprofile']
    sweetness = data['sweetness']
    body = data['body']
    acidity = data['acidity']
    bitterness = data['bitterness']
    date = data['date']
    rate_coffeeC(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date)

    # If unsuccessful, return {"success":False}
    response_data = {'success':True}
    response = make_response(jsonify(response_data),200)
    response.headers['Content-Type'] = 'application/json'
    return response


@bp.route('/login',methods=['POST'])
# request:  contains username:string, password:string
def login():
    # TODO: Add login logic (call controller, contact db, etc.)
    data = json.loads(request.data)
    username = data['username']
    password = data['password']
    #print(username,password)

    # If unsuccessful, return {"success":False}
    response_data = {'success':True,'username':username,'password':password}
    response = make_response(jsonify(response_data),200)
    response.headers['Content-Type'] = 'application/json'
    return response
