*** Settings ***
Resource    Resource.robot
Library     Collections
Library     Browser

*** Variables ***
${USERNAME}    standard_user
${PASSWORD}    secret_sauce


*** Test Cases ***
Add and remove item to the basket
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
