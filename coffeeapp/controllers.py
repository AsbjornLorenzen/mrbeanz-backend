# Handles logic/controllers in the app, as well as data manipulation.
from  coffeeapp.models import get_coffee_with_ratings, beans_search, rate_coffee

def get_coffee_with_ratingsC(beanid):
    # get beans from postgres
    beans = get_coffee_with_ratings(beanid)
    return beans

def beans_filter(roastery_ids=None, farm_ids=None, vendor_ids=None):
    # get beans from postgres
    beans = beans_search(roastery_ids, farm_ids, vendor_ids)
    return beans

def rate_coffeeC(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date):
    #rate coffee
    rate_coffee(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date)


    
