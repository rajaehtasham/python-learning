def decorator_func(orig_func):
    def wrapper_func(*ar,**a):
        print("Wrapper executed this before {}".format(orig_func.__name__))
        return orig_func(*ar,**a)
    return wrapper_func

@decorator_func
def display():
    print("Display function ran!")
display()

@decorator_func
def display_info(name,age):
    print("display_info ran with arguments ({},{})".format(name,age))
display_info('Ehtasham', 20)
