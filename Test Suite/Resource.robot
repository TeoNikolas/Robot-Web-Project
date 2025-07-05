*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.saucedemo.com/


*** Keywords ***
Login
    New Browser    chromium    headless=False
    New Context    viewport={'width':1280, 'height':800}
    New Page       ${URL}
    Fill Text      xpath=//input[@id="user-name"]     standard_user
    Fill Text      xpath=//input[@id="password"]      secret_sauce
    Click          id=login-button
