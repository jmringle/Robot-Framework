*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Go to SauceLabs site
    Open Browser    https://www.saucedemo.com/
Input username
    Input Text      id=user-name    standard_user
Input password
    Input Text      id=password    secret_sauce
Click login button
    Click Button    id=login-button
Pick item
    Click Element   id=add-to-cart-sauce-labs-backpack
Click Cart
    Click Element   (//a[@class='shopping_cart_link'])[1]
Validate price
    Page Should Contain    29.99
Click Checkout
    Click Element   id=checkout
Enter first name at checkout
    Input Text      id=first-name    Justin
Enter last name at checkout
    Input Text      id=last-name    Time
Enter postal code infomation
    Input Text      id=postal-code    43011
Click continue button
    Click Button    id=continue
Click finish button
    Click Button    id=finish
    Close All Browsers

