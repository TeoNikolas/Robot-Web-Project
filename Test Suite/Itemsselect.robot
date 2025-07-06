*** Settings ***
Resource    Resource.robot
Library     Collections
Library     Browser

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Add and remove item from the basket
    Login
    Authenticate user    ${USERNAME}    ${PASSWORD}
    Click    xpath=//button[@id="add-to-cart-sauce-labs-bike-light"]
    Click    xpath=//a[@class="shopping_cart_link"]
    Wait For Elements State    id=item_0_title_link    visible
    Click    xpath=//button[@id="remove-sauce-labs-bike-light"]
