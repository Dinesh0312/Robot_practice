from robot.api.deco import keyword

def subtract_numbers(num1: int, num2: int):
    return num1-num2

#python keyword using decorator
@keyword(r'multiply "${num1}" and "${num2}"')
def multiply(num1: int, num2: int):
    return  num1*num2