*** Settings ***
Resource    Resource.robot
Library    Browser


*** Variables ***
${USERNAME1}    alice
${PASSWORD1}    from the wonderland
${USERNAME2}    Peppa Pig
${PASSWORD2}    In the house    
${USERNAME3}    Hello world
${PASSWORD3}    It's Me!
*** Test Cases ***
Passing wrong Login credentials
    Login
    Authenticate user    ${USERNAME1}    ${PASSWORD1}
    Sleep    2
    Authenticate user    ${USERNAME2}    ${PASSWORD2}
    Sleep    2
    Authenticate user    ${USERNAME3}    ${PASSWORD3}
    Sleep    2
