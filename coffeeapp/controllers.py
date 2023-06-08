from coffeeapp.utils import beans_to_json, rating_to_json
import json

# Handles logic/controllers in the app, as well as data manipulation.
from  coffeeapp.models import get_coffee_with_ratings, beans_search, rate_coffee

def get_coffee_with_ratingsC(beanid):
    # get beans from postgres
    (beans, rating) = get_coffee_with_ratings(beanid)
    json_beans = beans_to_json(beans)
    json_rating = rating_to_json(rating)
    combined = json_beans + json_rating
    data = json.dumps(combined)

    return data

def beans_filter(roastery_ids=None, farm_ids=None, vendor_ids=None):
    # get beans from postgres
    beans = beans_search(roastery_ids, farm_ids, vendor_ids)
    json_beans = beans_to_json(beans)
    return json_beans

def rate_coffeeC(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date):
    #rate coffee
    rate_coffee(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date)


    
