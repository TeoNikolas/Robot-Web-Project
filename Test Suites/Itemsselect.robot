*** Settings ***
Documentation    This test suite validates that a user can add an item
...    to the basket and remove it before checkout on saucedemo.com.
Resource    Resource.robot
Library     Collections
Library     Browser

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce


*** Test Cases ***
Add and remove item to the basket
    [Documentation]    Logs in as a standard user, adds an item to the shopping cart,
    ...    views the cart, and removes the item before proceeding to checkout.
    Open Web Page
    Authenticate user    ${USERNAME}    ${PASSWORD}
    Sleep    3
    Click    xpath=//button[@id="add-to-cart-sauce-labs-bike-light"]
    Sleep    3
    Click    xpath=//a[@class="shopping_cart_link"]
    Sleep    3
    Wait For Elements State    id=item_0_title_link    visible
    Click    xpath=//button[@id="remove-sauce-labs-bike-light"]
    Sleep    3
    Logout user
