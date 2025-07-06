*** Settings ***
Library    Browser
Resource    Resource.robot
Library    Collections

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Completing Item Purchase
    Open Web Page
    Authenticate user    ${USERNAME}    ${PASSWORD}
    Add_Item
    Proceed_To_Checkout
    Logout user


*** Keywords ***
Add_Item
    Click    xpath=//button[@id="add-to-cart-sauce-labs-bike-light"]
    Click    xpath=//a[@class="shopping_cart_link"]

Proceed_To_Checkout
    Wait For Elements State    xpath=//button[@id="checkout"]    visible
    Click    xpath=//button[@id="checkout"]
    Wait For Elements State    xpath=//span[@class="title"]    visible
    Fill Text    xpath=//input[@id="first-name"]    tester
    Fill Text    xpath=//input[@id="last-name"]    testertester
    Fill Text    xpath=//input[@id="postal-code"]    100500
    Click    xpath=//input[@id="continue"]
    Wait For Elements State    xpath=//span[@class="title"]    visible
    Click    xpath=//button[@id="finish"]
    Wait For Elements State    xpath=//button[@id="back-to-products"]    visible
    Click    xpath=//button[@id="back-to-products"]