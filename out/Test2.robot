# Settings section
# This is where you
#    - add suite documentation
#    - import variables from YAML files
#    - import keywords from Python and Robot files
#    - add suite setup and teardown
*** Settings ***
Documentation    This script covers introduction to settings section of a robot script.
...              We go through importing standard Robot Framework keywords as well as CXTA keywords,
...              importing variables from YAML files,
...              and adding Suite Setup and Teardown.
# CXTA Libraries
Library     CXTA
Resource    cxta.robot

# Built-in Libraries
Library     String
Library     DateTime
Library     Collections

# Import external variables
Variables    /home/cisco/cxta/my_variables.yaml

# Suite Setup and Teardown
Suite Setup       Log    The script execution has started    console=True
Suite Teardown    Log    The script execution is complete    console=True

*** Test Cases ***
PRINT VARIABLES FROM EXTERNAL FILE ON CONSOLE
    Log    ${name}
    Log    ${multiline_string}
    # External Lists
    Log List    ${list_horizontal}
    Log List    ${list_vertical}
    Log List    ${list_of_dict_horizotal}
    Log List    ${list_of_dict_vertical}
    # External Dictionaries
    Log Dictionary    ${dict_horizontal}
    Log Dictionary    ${dict_vertical}
    Log Dictionary    ${mixed_horizontal}
    Log Dictionary    ${mixed_vertical}

GET CURRENT DATE AND TIME
    ${date} =	Get Current Date
    Log    ${date}    console=True