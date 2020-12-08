*** Settings ***
Library           SeleniumLibrary
Resource          Keywords/Populate_the_fields.robot
Resource          Keywords/Homepage.robot
Resource          Keywords/Register_button.robot
Resource          Keywords/Register_page.robot

*** Test Cases ***
RegValid
    [Setup]    Open website    https://www.nopcommerce.com/en    chrome
    Navigate to register page
    Populate the required fields    Jove    Ilijovski    jove1@test.com    jove1@test.com    Jove1    123456    123456
    Click on register button
    [Teardown]    Close Browser

InvalidPassword
    [Setup]    Open website    https://frontend.nopcommerce.com    chrome
    Wait Until Element Is Visible    //*[@id="customerCurrency"]
    Click Element    //*[@id="customerCurrency"]
    [Teardown]    Close Browser
