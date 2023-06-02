# Handles logic/controllers in the app, as well as data manipulation.
from  coffeeapp.models import select_beans_by_id, beans_search

def get_beans(beanid):
    # get beans from postgres
    beans = select_beans_by_id(beanid)
    return beans

def beans_filter(roastery_ids=None, farm_ids=None, vendor_ids=None):
    # get beans from postgres
    beans = beans_search(roastery_ids, farm_ids, vendor_ids)
    return beans