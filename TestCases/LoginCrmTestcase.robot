*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_orangeCRM.robot

*** Variables ***
${browser}    chrome
${login_url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${crm_UserName}    Admin
${crm_UserPassowrd}    admin123

*** Test Cases ***
TC_01 Verify login with valid credentials
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${crm_UserName}
    sleep    3
    Enter CRM User Password    ${crm_UserPassowrd}
    Click On Login Button
    sleep    3
    verify succesfull login
    Close CRM Url browser