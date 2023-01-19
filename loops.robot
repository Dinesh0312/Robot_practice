<<<<<<< HEAD
*** Settings ***
# CXTA Libraries
Library     CXTA
Resource    cxta.robot

# Collections library
Library     Collections

# Import external variables
Variables    my_variables.yaml

*** Keywords ***
INNER FOR LOOP
    [Arguments]    ${list}
    FOR    ${item}    IN    @{list}
        Log    ${item}    console=True
    END

*** Test Cases ***
LOOPING OVER LIST ITEMS
    FOR    ${item}    IN    @{list_horizontal}
        Log    ${item}    console=True
    END

LOOPING OVER DICTIONARY
    Log Dictionary    ${dict_horizontal}
    # Looping by first fetching keys
    ${dict_keys}=    Get Dictionary Keys    ${dict_horizontal}
    FOR    ${key}    IN    @{dict_keys}
        Log    ${dict_horizontal}[${key}]    console=True
        Log    ${dict_horizontal['${key}']}    console=True
    END

    # Directly looping without fetching keys
    FOR    ${key}    IN    @{dict_horizontal}
        Log    ${dict_horizontal}[${key}]    console=True
        Log    ${dict_horizontal['${key}']}    console=True
    END

LOOPING OVER LIST USING RANGE
    # Range with only upper-limit
    FOR    ${index}    IN RANGE    4
        Log    ${list_horizontal}[${index}]    console=True
        Log    ${list_horizontal[${index}]}    console=True
    END

NESTED FOR LOOP
    FOR    ${inner_list}    IN    @{2d_list}
        INNER FOR LOOP    ${inner_list}
=======
*** Settings ***
# CXTA Libraries
Library     CXTA
Resource    cxta.robot

# Collections library
Library     Collections

# Import external variables
Variables    my_variables.yaml

*** Keywords ***
INNER FOR LOOP
    [Arguments]    ${list}
    FOR    ${item}    IN    @{list}
        Log    ${item}    console=True
    END

*** Test Cases ***
LOOPING OVER LIST ITEMS
    FOR    ${item}    IN    @{list_horizontal}
        Log    ${item}    console=True
    END

LOOPING OVER DICTIONARY
    Log Dictionary    ${dict_horizontal}
    # Looping by first fetching keys
    ${dict_keys}=    Get Dictionary Keys    ${dict_horizontal}
    FOR    ${key}    IN    @{dict_keys}
        Log    ${dict_horizontal}[${key}]    console=True
        Log    ${dict_horizontal['${key}']}    console=True
    END

    # Directly looping without fetching keys
    FOR    ${key}    IN    @{dict_horizontal}
        Log    ${dict_horizontal}[${key}]    console=True
        Log    ${dict_horizontal['${key}']}    console=True
    END

LOOPING OVER LIST USING RANGE
    # Range with only upper-limit
    FOR    ${index}    IN RANGE    4
        Log    ${list_horizontal}[${index}]    console=True
        Log    ${list_horizontal[${index}]}    console=True
    END

NESTED FOR LOOP
    FOR    ${inner_list}    IN    @{2d_list}
        INNER FOR LOOP    ${inner_list}
>>>>>>> cafaa11948cee5469c3e041df6d967d0b605856f
    END