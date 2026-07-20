def calculator(fx):
    def mfx(*args,**kwargs):
        print("Calculator is started.")
        result=fx(*args,**kwargs)
        return result
    return mfx

@calculator
def add(a,b):
    print(f"Addition: {a+b}")

@calculator
def sub(a,b):
    print(f"Subtraction: {a-b}")

@calculator
def mul(a,b):
    print(f"Multiplication: {a*b}")

@calculator
def div(a,b):
    if b==0:
        return"Division with 0 is not allowed"
    else:
     print(f"Division: {a/b}")

print("Multi-Calulator")
num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
add(num1, num2)
sub(num1, num2)
mul(num1, num2)
div(num1, num2)