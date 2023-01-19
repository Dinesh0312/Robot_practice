*** Settings ***
#CXTA Libraries
Library     CXTA
Resource    cxta.robot
#custom keyword files
Library     python_keywords.py
Resource     my_keywords.robot

*** Variables ***
${int1}  5
${int2}  10

*** Keywords ***
Adding Two Numbers
    [arguments]  ${num1}  ${num2}
    [Documentation]  This keyword returns the summation value of provided Numbers
    ...              Arguments : Number1 Number2
    ${sum}=  Evaluate    ${num1}+${num2}
    Return From Keyword    ${sum}
Printing Values "${num1}" "${num2}"
    [Documentation]  It prints the values of passed variables on console
    Log    ${num1}, ${num2}    console=True
    
*** Test Cases ***
ADD TWO NUMBERS
    ${sum}=  Adding Two Numbers   ${int1}    ${int2}
    Log    ${sum}    console=True
PRINT VALUES
    Printing Values "${int1}" "${int2}"
BASIC PYTHON KEYWORD
    ${type}=  Evaluate    type(${int1})
    ${diff}=  subtract numbers    ${int1}    ${int2}
    Log    ${diff}    console=True
PYTHON KEYWORD WITH EMBEDDED ARGUMENTS
    ${product}=  multiply "${int1}" and "${int2}"
    Log    ${product}    console=True
DIVIDE TWO NUMBERS
    ${div}=    Dividing Two Numbers    ${int1}    ${int2}
    Log    ${div}    console=True