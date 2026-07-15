class Employee:
    def __init__(self,first,last,pay):
        self.first=first
        self.last=last
        self.pay=pay
        # print(f"First name: {self.first}")
        # print(f"Last name: {self.last}")
        # print(f"Email: {self.email}")
        # print(f"Pay: {self.pay}")
     
    @property
    def full_name(self):
        return '{} {}'.format(self.first,self.last) 
    
    @property
    def email(self):
        return '{}.{}@gmail.com'.format(self.first,self.last) 
    
    @full_name.setter
    def full_name(self,name):
        first,last=name.split(' ')
        self.first=first
        self.last=last
    
    @full_name.deleter
    def full_name(self):
        print("Delete Name!")
        self.first=None
        self.last=None
        

emp_1=Employee('raja','ehtasham',50000)
emp_1.full_name='muhammad arslan'
print(emp_1.full_name)
print(emp_1.email)
del emp_1.full_name
emp_2=Employee('muhammad','ali',40000)
emp_2.full_name='zohaib qazi'
print(emp_2.full_name)
print(emp_2.email)
