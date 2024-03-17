*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}              Chrome
#URL
${SauceLabsURL}         https://www.saucedemo.com/
#Users
${SauceLabsUser}        standard_user
${SauceLabsPassword}    secret_sauce  
#Fields
${UsernameField}        id=user-name
${PasswordField}        id=password
${FirstNameField}       id=first-name
${LastNameField}        id=last-name
${SauceLabsUser}        standard_user
${SauceLabsPassword}    secret_sauce  
${PostalCode}           id=postal-code      

#Buttons
${LoginButton}          id=login-button
${Checkout}             id=checkout
${ShoppingCart}         (//a[@class='shopping_cart_link'])[1]
${Continue}             id=continue
${Finish}               id=finish


#items
${backpack}             id=add-to-cart-sauce-labs-backpack