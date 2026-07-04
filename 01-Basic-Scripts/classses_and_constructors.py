class Person:
    def __init__(self,name):
        self.name=name
    def talk(self):
        print(f"Hi, my name is {self.name}.")


person1=Person("Ehtasham")
person1.talk()
person2=Person("Ali")
person2.talk()