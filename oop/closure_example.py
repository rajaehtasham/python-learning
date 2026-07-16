# Closure example
# inner_func remembers 'msg' from outer_func
# even after outer_func has finished running

def outer_func(msg):
    def inner_func():
        print(msg)
    return inner_func

disp = outer_func('hi')
disp()                    # prints: hi

disp = outer_func('bye')
disp()                    # prints: bye