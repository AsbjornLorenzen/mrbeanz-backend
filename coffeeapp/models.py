# Make connection with postgres. In here, all logic related to storing and retrieving in db is handled

from coffeeapp import conn

def get_coffee_with_ratings(beanid):
    cur = conn.cursor()
    # SQL query to retrieve the coffee with the specified beanid
    coffee_query = """
        SELECT *
        FROM Coffee
        WHERE CoffeeID = %s
    """
    cur.execute(coffee_query, (beanid,))
    coffee = cur.fetchall()

    # SQL query to retrieve all ratings associated with the coffee
    ratings_query = """
        SELECT *
        FROM Rates
        WHERE CoffeeID = %s
    """
    cur.execute(ratings_query, (beanid,))
    ratings = cur.fetchall()

    cur.close()
    return coffee, ratings

def rate_coffee(userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date):
    cur = conn.cursor()
    print(userid)
    sql = """
        INSERT INTO Rates (UserID, CoffeeID, Rating, FlavourProfile, Sweetness, Body, Acidity, Bitterness, DateOfRating)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    cur.execute(sql, (userid, coffeeid, rating, flavorprofile, sweetness, body, acidity, bitterness, date))
    cur.close()

#If roastery_ids=[1, 2], the function will return coffee records from roasteries with IDs 1 and 2.
def beans_search(roastery_ids, farm_ids, vendor_ids):
    cur = conn.cursor()
    sql = "SELECT * FROM Coffee"

    if roastery_ids:
        roastery_ids_str = ", ".join(str(id) for id in roastery_ids)
        sql += f" WHERE RoasteryID IN ({roastery_ids_str})"
    
    if farm_ids:
        farm_ids_str = ", ".join(str(id) for id in farm_ids)
        if roastery_ids:
            sql += f" AND FarmID IN ({farm_ids_str})"
        else:
            sql += f" WHERE FarmID IN ({farm_ids_str})"
    
    if vendor_ids:
        vendor_ids_str = ", ".join(str(id) for id in vendor_ids)
        if roastery_ids or farm_ids:
            sql += f" AND coffeeid IN (SELECT CoffeeID FROM Sells WHERE VendorID IN ({vendor_ids_str}))"
        else:
            sql += f" WHERE coffeeid IN (SELECT CoffeeID FROM Sells WHERE VendorID IN ({vendor_ids_str}))"
    
    cur.execute(sql)
    tuple_resultset = cur.fetchall()
    cur.close()
    return tuple_resultset




    