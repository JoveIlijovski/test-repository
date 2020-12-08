*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Click_on_register.robot

*** Keywords ***
Click on register button
    Click Element    ${register_button}
    Element Text Should Be    ${register_header}    Register
    Sleep    3s
