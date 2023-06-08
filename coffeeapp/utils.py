import json

def beans_to_json(beans):
    # Convert beans as array to beans as JSON object
    
    # Convert the list of tuples to a list of dictionaries
    converted_data = []
    for item in beans:
        converted_data.append({
            'CoffeeID': item[0],
            'FairTrade': item[1],
            'Varietal': item[2],
            'FarmID': item[3],
            'Processing': item[4],
            'RoasteryID': item[5],
            'RoastLevel': item[6]
        })

    return converted_data

def rating_to_json(rating):
    # Convert the list of tuples to a list of dictionaries
    converted_data = []
    for item in rating:
        converted_data.append({
            'Rating': item[0],
            'Sweetness': item[1],
            'Body': item[2],
            'Acidity': item[3],
            'Bitterness': item[4],
            'FlavorProfile': item[5],
            'DateOfRating': str(item[6]),
            'UserID': item[7]
        })

    return converted_data