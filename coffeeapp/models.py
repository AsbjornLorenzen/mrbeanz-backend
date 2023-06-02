# Make connection with postgres. In here, all logic related to storing and retrieving in db is handled

from coffeeapp import conn

def select_beans_by_id(beanid):
    cur = conn.cursor()
    sql = """
    SELECT * FROM Coffee
    WHERE CoffeeID = %s """
    cur.execute(sql, (beanid,))
    tuple_resultset = cur.fetchall()
    cur.close()
    return tuple_resultset

#If roastery_ids=[1, 2], the function will return coffee records from roasteries with IDs 1 and 2.
def beans_search(roastery_ids, farm_ids, vendor_ids):
    cur = conn.cursor()
    sql = "SELECT * FROM Coffee"

    if roastery_ids:
        roastery_ids_str = ", ".join(str(id) for id in roastery_ids)
        sql += f" WHERE roasteryid IN ({roastery_ids_str})"    #Change roasteryid to real database bame
    
    if farm_ids:
        farm_ids_str = ", ".join(str(id) for id in farm_ids)
        if roastery_ids:
            sql += f" AND farmid IN ({farm_ids_str})" #Change farmid to real database bame
        else:
            sql += f" WHERE farmid IN ({farm_ids_str})" #Change farmid to real database bame
    
    if vendor_ids:
        vendor_ids_str = ", ".join(str(id) for id in vendor_ids)
        if roastery_ids or farm_ids:
            sql += f" AND coffeeid IN (SELECT coffeeid FROM sells WHERE vendorid IN ({vendor_ids_str}))" #change database names
        else:
            sql += f" WHERE coffeeid IN (SELECT coffeeid FROM sells WHERE vendorid IN ({vendor_ids_str}))" #change database names
    
    cur.execute(sql)
    tuple_resultset = cur.fetchall()
    conn.close()
    return tuple_resultset



    