*** Settings ***
Library    Browser
Resource    Resource.robot
Library    Collections

*** Variables ***

*** Test Cases ***
Completing Item Purchase
    Add and remove item from the basket
    Wait For Elements State    xpath=//button[@id="checkout"]    visible
    Click    xpath=//button[@id="checkout"]
    Wait For Elements State    xpath=//span[@class="title"]    visible
    Fill Text    xpath=//input[@id="first-name"]    tester
    Fill Text    xpath=//input[@id="last-name"]    testertester
    Fill Text    xpath=//input[@id="postal-code"]    100500
    Click    xpath=//input[@id="continue"]
    Wait For Elements State    xpath=//span[@class="title"]    visible
    Click    xpath=//button[@id="finish"]




*** Keywords ***
Add and remove item from the basket
    Login
    Click          xpath=//button[@id="add-to-cart-sauce-labs-bike-light"]
    Click          xpath=//a[@class="shopping_cart_link"]
    Wait For Elements State    id=item_0_title_link    visible
    Click          xpath=//button[@id="remove-sauce-labs-bike-light"]