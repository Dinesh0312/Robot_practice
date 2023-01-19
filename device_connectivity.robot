<<<<<<< HEAD
*** Settings ***
Library  CXTA
Resource  cxta.robot
Library    Collections

# Suite Setup    Run Keywords
# ...            connect to device "PE1"
# ...            connect to device "PE2"
# ...            connect to all devices


# Suite Teardown    disconnect from all devices

Variables    my_variables.yaml

# *** Variables ***

# @{test_devices}    PE1    PE2

*** Test Cases ***

LOAD THE TESTBED
    load testbed "/home/cisco/cxta/CML_lab2.yaml"

# CONFIGURE LOOPBACK ON R1
#     use device "${test_devices[0]}"
#     run "sh ip int br"

#     run "configure terminal"
#     run "interface Loopback11"
#     run "ipv4 address 11.11.11.11/32"
#     run "commit"
#     run "end"

# SHUTDOWN INTERFACE ON R2
#     use device "${test_devices[1]}"
#     run "show run"

#     run "configure terminal"
#     run "interface GigabitEthernet0/0/0/0"
#     run "shutdown"
#     run "commit"
#     run "end"

# PARSE IP ADDRESS FOR LOOPBACK INTERFACE
#     use device "${test_devices[0]}"
#     run "sh ip int br"
#     ${loopback_ip}=    extract pattern "Loopback11\\s+([\\d\\.]+)"

PARSE IP ADDRESS FOR ALL INTERFACES
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "sh ip int br"
    ${loopback_ips}=    extract patterns "\\w+\\s+([\\d\\.]{3,})"

PARSE IP ADDRESS AND INTERFACE NAME FOR ALL INTERFACES
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "sh ip int br"
    ${loopback_ips}=    extract patterns "(.+)\\s+([\\d\\.]{3,})"

PARSING USING TEXTFSM
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    ${interfaces}=  run parsed "show_ip_interface_brief"
    Log List  ${interfaces}

ACCESS DEVICES IN A LOOP
    FOR    ${device}    IN    @{test_devices}
        connect to device "${device}"
        run "sh ip int br"
=======
*** Settings ***
Library  CXTA
Resource  cxta.robot
Library    Collections

# Suite Setup    Run Keywords
# ...            connect to device "PE1"
# ...            connect to device "PE2"
# ...            connect to all devices


# Suite Teardown    disconnect from all devices

Variables    my_variables.yaml

# *** Variables ***

# @{test_devices}    PE1    PE2

*** Test Cases ***

LOAD THE TESTBED
    load testbed "/home/cisco/cxta/CML_lab2.yaml"

# CONFIGURE LOOPBACK ON R1
#     use device "${test_devices[0]}"
#     run "sh ip int br"

#     run "configure terminal"
#     run "interface Loopback11"
#     run "ipv4 address 11.11.11.11/32"
#     run "commit"
#     run "end"

# SHUTDOWN INTERFACE ON R2
#     use device "${test_devices[1]}"
#     run "show run"

#     run "configure terminal"
#     run "interface GigabitEthernet0/0/0/0"
#     run "shutdown"
#     run "commit"
#     run "end"

# PARSE IP ADDRESS FOR LOOPBACK INTERFACE
#     use device "${test_devices[0]}"
#     run "sh ip int br"
#     ${loopback_ip}=    extract pattern "Loopback11\\s+([\\d\\.]+)"

PARSE IP ADDRESS FOR ALL INTERFACES
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "sh ip int br"
    ${loopback_ips}=    extract patterns "\\w+\\s+([\\d\\.]{3,})"

PARSE IP ADDRESS AND INTERFACE NAME FOR ALL INTERFACES
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    run "sh ip int br"
    ${loopback_ips}=    extract patterns "(.+)\\s+([\\d\\.]{3,})"

PARSING USING TEXTFSM
    connect to device "${test_devices[0]}"
    select device "${test_devices[0]}"
    ${interfaces}=  run parsed "show_ip_interface_brief"
    Log List  ${interfaces}

ACCESS DEVICES IN A LOOP
    FOR    ${device}    IN    @{test_devices}
        connect to device "${device}"
        run "sh ip int br"
>>>>>>> cafaa11948cee5469c3e041df6d967d0b605856f
    END