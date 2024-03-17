*** Settings ***
Library     SeleniumLibrary
Resource    SauceLabsResources.robot
*** Test Cases ***
Go to SauceLabs site
    Open Browser                        ${SauceLabsURL}
Input username
    Input Text      ${UsernameField}    ${SauceLabsUser}
Input password
    Input Text      ${PasswordField}    ${SauceLabsPassword}
Click login button
    Click Button                        ${LoginButton}
Pick item
    Click Element                       ${backpack}
Click Cart
    Click Element                       ${ShoppingCart}
Validate price
    Page Should Contain                 29.99
Click Checkout
    Click Element                       ${Checkout}
Enter first name at checkout
    Input Text      ${FirstNameField}   Justin
Enter last name at checkout
    Input Text      ${LastNameField}    Time
Enter postal code infomation
    Input Text      ${PostalCode}       43011
Click continue button
    Click Button    ${Continue}
Click finish button
    Click Button    ${Finish}
    Close All Browsers

