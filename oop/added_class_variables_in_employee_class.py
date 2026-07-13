class Employee:
    raise_amount=1.05
    no_of_emps=0
    def __init__(self,first,last,pay):
        self.first=first
        self.last=last
        self.email=first + '.' + last + '@company.com'
        self.pay=pay
        print(f"First name: {self.first}")
        print(f"Last name: {self.last}")
        print(f"Email: {self.email}")
        print(f"Pay: {self.pay}")

        Employee.no_of_emps += 1

    def full_name(self):
        return '{} {}'.format(self.first,self.last) 
    
    def raise_pay(self):
       print(f"Raise pay: {self.pay * self.raise_amount}") 
       

print(f"raise amount for both employees: {Employee.raise_amount}")
emp_1=Employee('Raja','Ehtasham',50000)
print(emp_1.full_name())
emp_1.raise_pay()
print(" ")
emp_2=Employee('Muhammad','Ali',40000)
print(emp_2.full_name())
emp_2.raise_pay()
print(" ")
print(f"No. of Employees: {Employee.no_of_emps}")
print(" ")
print(Employee.__dict__)