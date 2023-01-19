<<<<<<< HEAD
*** Settings ***
Library  CXTA
Resource  cxta.robot
Variables    my_variables.yaml

# Suite Setup    load testbed  "/home/cisco/cxta/CML_lab2.yaml"
# ...            connect to device "${test_devices[0]}"
# ...            connect to device "${test_devices[1]}"

# Suite Teardown     disconnect from all devices

*** Test Cases ***

LOAD THE TESTBED
    load testbed "/home/cisco/cxta/CML_lab2.yaml"

VERIFY LOOPBACK IP
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "show run int Loopback11"
    # Output contains
    output contains "11.11.11.11"
    # Output matches pattern
    output matches pattern "ipv4\\s+address\\s+11.11.11.11\\s+[\\s\\d\\.]+"

VERIFY LOOPBACK IP ENHANCED LOGGING
    connect to device "${test_devices[0]}"
    # Note: Replace \\ with \\\\
    select device "${test_devices[0]}"
    run "show run int Loopback11"
    # Output contains
    ${status}=    Run Keyword And Return Status    output contains "11.11.11.11"
    Run Keyword If   '${status}' == 'True'    Set Test Message    The Loopback has IP configured.    append=True
    ...                              ELSE     FAIL    The Loopback doesn't have an IP configured.

    # Output matches pattern
    ${status}=    Run Keyword And Return Status    output matches pattern "ipv4\\\\s+address\\\\s+11.11.11.11\\\\s+[\\\\s\\\\d\\\\.]+"
    Run Keyword If   '${status}' == 'True'    Set Test Message    The Loopback has IP configured.    append=True
=======
*** Settings ***
Library  CXTA
Resource  cxta.robot
Variables    my_variables.yaml

# Suite Setup    load testbed  "/home/cisco/cxta/CML_lab2.yaml"
# ...            connect to device "${test_devices[0]}"
# ...            connect to device "${test_devices[1]}"

# Suite Teardown     disconnect from all devices

*** Test Cases ***

LOAD THE TESTBED
    load testbed "/home/cisco/cxta/CML_lab2.yaml"

VERIFY LOOPBACK IP
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "show run int Loopback11"
    # Output contains
    output contains "11.11.11.11"
    # Output matches pattern
    output matches pattern "ipv4\\s+address\\s+11.11.11.11\\s+[\\s\\d\\.]+"

VERIFY LOOPBACK IP ENHANCED LOGGING
    connect to device "${test_devices[0]}"
    # Note: Replace \\ with \\\\
    select device "${test_devices[0]}"
    run "show run int Loopback11"
    # Output contains
    ${status}=    Run Keyword And Return Status    output contains "11.11.11.11"
    Run Keyword If   '${status}' == 'True'    Set Test Message    The Loopback has IP configured.    append=True
    ...                              ELSE     FAIL    The Loopback doesn't have an IP configured.

    # Output matches pattern
    ${status}=    Run Keyword And Return Status    output matches pattern "ipv4\\\\s+address\\\\s+11.11.11.11\\\\s+[\\\\s\\\\d\\\\.]+"
    Run Keyword If   '${status}' == 'True'    Set Test Message    The Loopback has IP configured.    append=True
>>>>>>> cafaa11948cee5469c3e041df6d967d0b605856f
    ...                              ELSE     FAIL    The Loopback doesn't have an IP configured.