numbers=[1,3,4,4,4,5,6,6]
uniques=[]
for number in numbers:
    if number not in uniques:
       uniques.append(number)
print(uniques) 