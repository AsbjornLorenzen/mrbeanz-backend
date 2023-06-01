# Handles logic/controllers in the app, as well as data manipulation.

def get_beans(beanid):
    # get beans from postgres
    # this is a sample just for testing purposes. 
    beans = {
        "id": beanid,
        "name": "samplebeans",
        "roastery": "yomama",
        "vendor": "andreas' shitty shop",
    }

    return beans