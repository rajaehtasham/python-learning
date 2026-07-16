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

    @classmethod
    def set_raise_amt(cls,amount):
        cls.raise_amount=amount
       
    @classmethod
    def from_string(cls,emp_str):
        print(" ")
        first,last,pay=emp_str.split('-')
        return cls(first,last,pay)
    
Employee.set_raise_amt(1.10)

print(f"raise amount for both employees: {Employee.raise_amount}")
emp_1=Employee('Raja','Ehtasham',50000)
print(emp_1.full_name())
emp_1.raise_pay()
print(" ")

emp_2=Employee('Muhammad','Ali',40000)
print(emp_2.full_name())
emp_2.raise_pay()
print(" ")

emp_str_1='Saad-Ahmed-45000'
emp_str_2='Ahsan-Iqbal-48000'
emp_str_3='Eman-Ali-54000'

new_emp_1=Employee.from_string(emp_str_1)
new_emp_2=Employee.from_string(emp_str_2)
new_emp_3=Employee.from_string(emp_str_3)
print(" ")
print(emp_1.raise_amount)
print(emp_2.raise_amount)
print(Employee.raise_amount)
print(" ")
print(f"No. of Employees: {Employee.no_of_emps}")