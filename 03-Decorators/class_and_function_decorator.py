def decorator_func(orig_func):
    def wrapper_func():
        return wrapper_func

class Class_decorator(object):
    def __init__(self,orig_func):
        self.orig_func=orig_func

    def __call__(self,*args,**kwargs):
        print("Wrapper executed this before {}".format(self.orig_func.__name__))
        return self.orig_func(*args,**kwargs)

@Class_decorator
def display():
    print("Display function ran!")
display()

@Class_decorator
def display_info(name,age):
    print("display_info ran with arguments ({},{})".format(name,age))
display_info('Ehtasham', 20)
