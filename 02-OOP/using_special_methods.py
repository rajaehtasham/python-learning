class Employee:
    def __init__(self,first,last,pay):
        self.first=first
        self.last=last
        self.email=first + '.' + last + '@company.com'
        self.pay=pay
        print(f"First name: {self.first}")
        print(f"Last name: {self.last}")
        # print(f"Email: {self.email}")
        print(f"Pay: {self.pay}")
        print(" ")

    def full_name(self):
        return '{} {}'.format(self.first,self.last) 
    
    def __repr__(self):
        return "Employee('{}','{}',{})".format(self.first,self.last,self.pay)
    
    def __str__(self):
        return "{} - {}".format(self.full_name(),self.email)

    def __add__(self,other):
        return self.pay + other.pay
    
    def __len__(self):
        return len(self.full_name())


emp_1=Employee('Raja','Ehtasham',50000)
# print(emp_1.full_name())
emp_2=Employee('Muhammad','Ali',40000)
# print(emp_2.full_name())
print(repr(emp_1))
print(str(emp_1))
print(repr(emp_2))
print(str(emp_2))
print(emp_1 + emp_2)
print(len(emp_1))