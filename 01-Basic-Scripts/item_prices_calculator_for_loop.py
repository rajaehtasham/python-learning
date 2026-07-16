prices = [10,20,30,40]
total=0
items = ["burger ", "ketchup", "hair brush", "hair gell"]
for item in range(len(items)):
    print (f"price of {items[item]} is: {prices[item]}")
    total += prices[item]
print(f"total price of all items is: {total}")