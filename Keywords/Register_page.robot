*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Register_page.robot
Resource          ../Elements/Homepage.robot

*** Keywords ***
Navigate to register page
    Mouse Over    ${mouse_over}
    Wait Until Element Is Visible    ${register_first}
    Click Element    ${register_first}
    Element Text Should Be    ${register_header_first}    Register
