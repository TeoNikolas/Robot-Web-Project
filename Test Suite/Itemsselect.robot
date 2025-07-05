*** Settings ***
Resource    Resource.robot
Library    Collections

*** Variables ***

*** Test Cases ***
Add and remove item from the busket
    Login
    Sleep    2
    Click    xpath=//button[@id="add-to-cart-sauce-labs-bike-light"]
    Sleep    10
    

*** Keywords ***