*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_orangeCRM.robot

*** Variables ***
${browser}    chrome
${login_url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${crm_UserName}    Admin
${crm_UserPassword}    admin123
${crm_invalidUserName}    adm
${crm_invalidPassword}    admin12

*** Test Cases ***
TC_01 Verify that login with valid credentials
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${crm_UserName}
    sleep    3
    Enter CRM User Password    ${crm_UserPassword}
    Click On Login Button
    sleep    3
    Verify successfull login
    Close CRM Url browser
TC_02 Verify that login with invalid crendentials
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${crm_invalidUserName}
    sleep    3
    Enter CRM User Password    ${crm_invalidPassword}
    click on login button
    sleep    3
    Error Message when login unsuccessfull
    close crm url browser
TC_03 Verify that login with valid username and invalid password
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${crm_UserName}
    sleep    3
    Enter CRM User Password    ${crm_invalidPassword}
    click on login button
    sleep    3
    Error Message when login unsuccessfull
    close crm url browser
TC_04 Verify that login with valid user name and empty password
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${crm_UserName}
    sleep    3
    Enter CRM User Password    ${EMPTY}
    click on login button
    sleep    3
    Error Message when user name and password is blank
    close crm url browser
TC_05 Verify that login with empty user name and empty password
    open browser    ${login_url}    ${browser}
    sleep    3
    Enter CRM User Name    ${EMPTY}
    sleep    3
    Enter CRM User Password    ${EMPTY}
    click on login button
    sleep    3
    Error Message when user name and password is blank
    close crm url browser