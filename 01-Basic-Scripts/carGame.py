command = ""
car_started=False
while command!="quit": 
    command=input("> ").lower()
    if command == 'start':
        if car_started:
            print("Car is already started!")
        else:
            print("Car started, ready to go . . .")
            car_started = True          
    elif command == 'stop':
        if not car_started:
            print("Car has not started yet!")
        else:
            print('Car stopped.')
            car_started = False       
    elif command == 'quit': 
        print("Exited")
        break   
    elif command == 'help':
        print("""start- To start the car
stop- To stop the car
quit- To exit the game""")       
    else:
        print("i didnt understand")