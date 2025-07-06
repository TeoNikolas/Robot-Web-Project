*** Settings ***
Library    Browser

*** Variables ***
${URL}       https://www.saucedemo.com/

*** Keywords ***
Login
    ${browser}=    New Browser    chromium    headless=False
    ${context}=    New Context    viewport={'width':1200, 'height':700}
    ${page}=       New Page       ${URL}
    Set Suite Variable    ${page}

Authenticate user
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Type Text      xpath=//input[@id="user-name"]    ${USERNAME}
    Type Secret    xpath=//input[@id="password"]    $PASSWORD
    Click          id=login-button
