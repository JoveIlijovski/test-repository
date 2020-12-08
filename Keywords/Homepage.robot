*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Homepage.robot

*** Keywords ***
Open website
    [Arguments]    ${URL}    ${browser}
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Sleep    2s
