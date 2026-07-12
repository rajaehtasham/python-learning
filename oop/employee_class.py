class Employee:
    def __init__(self,first,last,pay):
        self.first=first
        self.last=last
        self.email=first + '.' + last + '@company.com'
        self.pay=pay
        print(f"First name: {self.first}")
        print(f"Last name: {self.last}")
        print(f"Email: {self.email}")
        print(f"Pay: {self.pay}")

    def full_name(self):
        return '{} {}'.format(self.first,self.last) 

emp_1=Employee('Raja','Ehtasham',50000)
print(emp_1.full_name())
emp_2=Employee('Muhammad','Ali',40000)
print(emp_2.full_name())
