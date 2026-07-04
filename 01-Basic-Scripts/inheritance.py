class Mammal:
    def __init__(self,name):
        self.name=name     
    def walk(self):
        print(f"{self.name} is walking . . .")


class Dog(Mammal):
    def bark(self):
        print("Dog is barking.")


class Cat(Mammal):
    def annoying(self):
        print("Cat is annoying.")


dog=Dog("Dog")
dog.walk()
dog.bark()
print(" ")
cat=Cat("Cat")
cat.walk()
cat.annoying()