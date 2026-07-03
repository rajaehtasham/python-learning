try:
    age=int(input("Age: "))
    income=int(input("Income: "))
    discount=income/age
    print(f"Discount: {discount}")
except ZeroDivisionError:
    print("Age cannot be 0.")
except ValueError:
    print("Invalid Value.")