*** Keywords ***
Dividing Two Numbers
    [arguments]     ${num1}     ${num2}
    [Documentation]     Divides the first number by second numbers
    ${div}      Evaluate  ${num1}/${num2}
    [Return]    ${div}