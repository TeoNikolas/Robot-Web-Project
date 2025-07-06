*** Settings ***
Library    Browser
Documentation    Resource file for most common operations with SauceDemo website

*** Variables ***
${URL}       https://www.saucedemo.com/

*** Keywords ***
Open Web Page
    [Documentation]    Open SauceDemo default we page
    ${browser}=    New Browser    chromium    headless=False
    ${context}=    New Context    viewport={'width':1200, 'height':700}
    ${page}=       New Page       ${URL}
    Set Suite Variable    ${page}

Authenticate user
    [Documentation]    Login standart user to the SauceDemo
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Type Text      xpath=//input[@id="user-name"]    ${USERNAME}
    Type Secret    xpath=//input[@id="password"]    $PASSWORD
    Click          id=login-button

Logout user
    [Documentation]    Log out from the Sauce Demo
    Click    xpath=//button[@id="react-burger-menu-btn"]
    Click    xpath=//a[@id="logout_sidebar_link"]
