from Box import Box
from Pyramid import Pyramid
from Sphere import Sphere
from Cone import Cone
import math


def makeBox():
    uH = int(input("Enter height "))
    uW = int(input("Enter width "))
    uL = int(input("Enter legnth "))
    b1 = Box(uW,uL,uH)
    print(f"Volume: {b1.calcVol()}")
    print(f"Surface Area: {b1.calcArea()}")
    
def makePyramid():
    uH = int(input("Enter height "))
    uW = int(input("Enter width "))
    uL = int(input("Enter legnth "))
    p1 = Pyramid(uW,uL,uH)
    print(f"Volume: {p1.calcVol()}")
    print(f"Surface Area: {p1.calcArea()}")

def makeSphere():
    uR = int(input("Enter radius "))
    s1 = Sphere(uR)
    print(f"Volume: {s1.calcVol()}")
    print(f"Surface Area: {s1.calcArea()}")
    
def makeCone():
    uH = int(input("Enter height "))
    uR = int(input("Enter radius "))
    p1 = Cone(uR,uH)
    print(f"Volume: {p1.calcVol()}")
    print(f"Surface Area: {p1.calcArea()}")
    
print("Welcome to the Shapemaker!")
playing = True
while playing:
    redo = True
    while redo:
        choice = input("press 1 to make a box, 2 to make a sphere, 3 to make a pyramid, 4 to make a cone: ")
        if choice == "1":
            makeBox()
            again = input("press 'a' to do another shape or 'q' to quit: ")
            if again == "q":
                playing = False
            redo = False
        elif choice == "2":
            makeSphere()
            again = input("press 'a' to do another shape or 'q' to quit: ")
            if again == "q":
                playing = False
            redo = False
        elif choice == "3":
            makePyramid()
            again = input("press 'a' to do another shape or 'q' to quit: ")
            if again == "q":
                playing = False
            redo = False
        elif choice == "4":
            makeCone()
            again = input("press 'a' to do another shape or 'q' to quit: ")
            if again == "q":
                playing = False
            redo = False        
        else:
            print("not an option")