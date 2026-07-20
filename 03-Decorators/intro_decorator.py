def intro(fx):
    def mfx():
        print("Hi, good morning")
        fx()
        print("I am 20 years old")
    return mfx
    
@intro
def name():
    print("My name is Raja Muhammad Ehtasham")

name()