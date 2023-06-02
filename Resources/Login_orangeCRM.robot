*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjectModel/LoginOrangeCRM.py

*** Keywords ***
Open CRM Login URL
    [Arguments]    ${login_url}    ${browser}
    open browser   ${login_url}    ${browser}
    maximize browser window
Enter CRM User Name
    [Arguments]    ${crm_UserName}
    input text     ${txt_userName}    ${crm_UserName}
Enter CRM User Password
    [Arguments]    ${crm_UserPassowrd}
    input text    ${txt_userPassowrd}    ${crm_UserPassowrd}
Click On Login Button
    click button    ${btn_loginButton}
Verify successfull Login
    page should contain    Dashboard
Error Message when login unsuccessfull
    page should contain    Invalid credentials
Error Message when user name and password is blank
    page should contain    Required
Close CRM Url browser
    close all browsers
