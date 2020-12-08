*** Settings ***
Library           SeleniumLibrary
Resource          ../Elements/Register_page.robot

*** Keywords ***
Populate the required fields
    [Arguments]    ${firstname_arg}    ${lastname_arg}    ${mail_arg}    ${confirmemail_arg}    ${username_arg}    ${password_arg}    ${confirmpassword_arg}
    Input Text    ${first_name}    ${firstname_arg}
    Input Text    ${last_name}    ${lastname_arg}
    Input Text    ${Email}    ${mail_arg}
    Input Text    ${confirm_email}    ${confirmemail_arg}
    Input Text    ${username}    ${username_arg}
    Input Password    ${password}    ${password_arg}
    Input Password    ${confirm_password}    ${confirmpassword_arg}
    Select From List By Value    ${company_primarily}    3
    Select From List By Index    ${main_activity}    2
    Select From List By Index    ${existing_store}    1
    Select From List By Index    ${bussines_model}    1
    Select From List By Index    ${company_size}    3
