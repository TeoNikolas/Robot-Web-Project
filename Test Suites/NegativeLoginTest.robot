*** Settings ***
Documentation    This test suite verifies that login attempts with incorrect
...    or malformed credentials are correctly rejected by the application.
Resource    Resource.robot
Library    Browser


*** Variables ***
${USERNAME1}    alice
${PSW1}    from the wonderland
${USERNAME2}    
${PSW2}        
${USERNAME3}    H_$0?\#
${PSW3}    12309885
${USERNAME4}    
${PSW4}    gäö';12$4
${USERNAME5}    gäö';123$
${PSW5}    

*** Test Cases *** 
All Invalid Login Scenarios
    [Documentation]    Attempts to log in with multiple sets of invalid credentials
    ...    to verify that the system blocks unauthorized access
    Open Web Page
    Invalid Login Should Fail    ${USERNAME1}    ${PSW1}
    Invalid Login Should Fail    ${USERNAME2}    ${PSW2}
    Invalid Login Should Fail    ${USERNAME3}    ${PSW3}



*** Keywords ***
Invalid Login Should Fail
    [Arguments]    ${username}    ${password}
    Authenticate user    ${username}    ${password}
    Wait For Elements State    css=.error-message-container    visible

