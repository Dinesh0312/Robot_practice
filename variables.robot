<<<<<<< HEAD
*** Settings ***

# CXTA Libraries
Library     CXTA
Resource    cxta.robot

# Collections library
Library     Collections

# Keyword usage compared to function usage in Python
# func(arg1, func2(arg2, arg3))
# func    arg1   func2    arg2    arg3

# Variables section
# This is where variables with suite scope are defined
*** Variables ***
${int_val}=      5
${int_val_2}=    10
${str_val}=      Robot Framework is fun!

# Defining a list
@{list}    item1    item2    item3
@{list_2}=   ${int_val}    ${int_val_2}    ${str_val}

# Defining a dictionary
&{dict}    key1=val1    key2=val2

*** Test Cases ***
PRINT STRING VARIABLE ON CONSOLE
    Log    ${str_val}    console=True

MULTIPLY TWO NUMBERS, ASSIGN RESULT TO A VARIABLE AND PRINT ON CONSOLE
    ${result}=    Evaluate    ${int_val} * ${int_val_2}
    Log    ${result}    console=True

PRINT LIST AND DICTIONARY ON CONSOLE
    Log List    ${list}
    Log List    ${list_2}
    Log Dictionary    ${dict}

ASSIGN VALUE TO A VARIABLE
    ${new_variable}=    Set Variable    12
    # Set Test Variable    ${new_variable}    12
    Log    The value of new_variable is ${new_variable}    console=True

SETTING VARIABLE SCOPE
    # Accessible to all subsequent tests
    Set Suite Variable    ${var_suite}    value

    # Shared by multiple jobfiles/test suites
    Set Global Variable   ${var_global}    value

ACCESSING VARIABLES
    Log    ${var_suite}    console=True
    Log    ${var_global}    console=True
    # This will fail as new_variable is only available in scope of previous test
=======
*** Settings ***

# CXTA Libraries
Library     CXTA
Resource    cxta.robot

# Collections library
Library     Collections

# Keyword usage compared to function usage in Python
# func(arg1, func2(arg2, arg3))
# func    arg1   func2    arg2    arg3

# Variables section
# This is where variables with suite scope are defined
*** Variables ***
${int_val}=      5
${int_val_2}=    10
${str_val}=      Robot Framework is fun!

# Defining a list
@{list}    item1    item2    item3
@{list_2}=   ${int_val}    ${int_val_2}    ${str_val}

# Defining a dictionary
&{dict}    key1=val1    key2=val2

*** Test Cases ***
PRINT STRING VARIABLE ON CONSOLE
    Log    ${str_val}    console=True

MULTIPLY TWO NUMBERS, ASSIGN RESULT TO A VARIABLE AND PRINT ON CONSOLE
    ${result}=    Evaluate    ${int_val} * ${int_val_2}
    Log    ${result}    console=True

PRINT LIST AND DICTIONARY ON CONSOLE
    Log List    ${list}
    Log List    ${list_2}
    Log Dictionary    ${dict}

ASSIGN VALUE TO A VARIABLE
    ${new_variable}=    Set Variable    12
    # Set Test Variable    ${new_variable}    12
    Log    The value of new_variable is ${new_variable}    console=True

SETTING VARIABLE SCOPE
    # Accessible to all subsequent tests
    Set Suite Variable    ${var_suite}    value

    # Shared by multiple jobfiles/test suites
    Set Global Variable   ${var_global}    value

ACCESSING VARIABLES
    Log    ${var_suite}    console=True
    Log    ${var_global}    console=True
    # This will fail as new_variable is only available in scope of previous test
>>>>>>> cafaa11948cee5469c3e041df6d967d0b605856f
    Log    ${new_variable}    console=True