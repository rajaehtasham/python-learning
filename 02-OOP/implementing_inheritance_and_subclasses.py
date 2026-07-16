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


class Developer(Employee):
    raise_amount=1.15
    def __init__(self,first,last,pay,prog_lang):
        super().__init__(first,last,pay)
        self.prog_lang=prog_lang
        print(f"Programming Language: {self.prog_lang}")


class Manager(Employee):
    def __init__(self,first,last,pay,employees):
        super().__init__(first,last,pay)
        if employees is None:
            self.employees=[]
        else:
            self.employees=employees

    def add_emp(self,emp):
        if emp not in self.employees:
            self.employees.append(emp)
    
    def remove_emp(self,emp):
        if emp in self.employees:
            self.employees.remove(emp)

    def print_emp(self):
        for emp in self.employees:
            print(f"Manages --> {emp.full_name()}")


print(f"Raise amount for both developers: {Developer.raise_amount}")
dev_1=Developer('Raja','Ehtasham',50000,'Python')
print(dev_1.full_name())
dev_1.raise_pay()
print(" ")
dev_2=Developer('Muhammad','Ali',40000,'Java')
print(dev_2.full_name())
dev_2.raise_pay()
print(" ")
print(f"No. of Developers: {Developer.no_of_emps}")
print(" ")
mgr_1=Manager('Ammar','Wasif','100000',[dev_1])
mgr_1.print_emp()
