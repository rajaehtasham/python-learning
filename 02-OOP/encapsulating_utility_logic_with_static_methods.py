class Employee:
    def __init__(self,f_name,l_name):
        self.f_name=f_name
        self.l_name=l_name
        print(f"First name of Employee: {self.f_name}")
        print(f"Last name of Employee: {self.l_name}")

    def full_name(self):
        return '{} {}'.format(self.f_name,self.l_name)
    
    @staticmethod
    def is_workday(day):
        if day.weekday()==5 or day.weekday()==6:
            return False
        return True
    

emp_1=Employee("Raja","Ehtasham")
print(f"Full name: {emp_1.full_name()}")
import datetime
my_date=datetime.date(2026, 7, 18)
print(f"Workday checking . . .  {Employee.is_workday(my_date)}")