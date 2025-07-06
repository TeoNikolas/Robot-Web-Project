*** Settings ***
Resource    Resource.robot
Library    Browser


*** Variables ***
${USERNAME1}    alice
${PASSWORD1}    from the wonderland
${USERNAME2}    
${PASSWORD2}        
${USERNAME3}    H_$0?\#
${PASSWORD3}    12309885
${USERNAME4}    
${PASSWORD4}    gäö';12$4

${USERNAME5}    gäö';123$
${PASSWORD5}    

*** Test Cases ***
Passing wrong Login credentials
    Open Web Page
    Authenticate user    ${USERNAME1}    ${PASSWORD1}
    Sleep    2
    Authenticate user    ${USERNAME2}    ${PASSWORD2}
    Sleep    2
    Authenticate user    ${USERNAME3}    ${PASSWORD3}
    Sleep    2
    Authenticate user    ${USERNAME4}    ${PASSWORD4}
    Sleep    2
    Authenticate user    ${USERNAME5}    ${PASSWORD5}
    Sleep    2


