<<<<<<< HEAD
from robot.api.deco import keyword

def subtract_numbers(num1: int, num2: int):
    return num1-num2

#python keyword using decorator
@keyword(r'multiply "${num1}" and "${num2}"')
def multiply(num1: int, num2: int):
=======
from robot.api.deco import keyword

def subtract_numbers(num1: int, num2: int):
    return num1-num2

#python keyword using decorator
@keyword(r'multiply "${num1}" and "${num2}"')
def multiply(num1: int, num2: int):
>>>>>>> cafaa11948cee5469c3e041df6d967d0b605856f
    return  num1*num2