*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjectModel/LoginElement.py

*** Keywords ***
Open Login Browser
    [Arguments]    ${Site_Url}    ${Browser}
    open browser   ${Site_Url}    ${Browser}
    maximize browser window
Enter User Name
    [Arguments]    ${userName}
    input text    ${text_userName}    ${userName}
Enter Password
    [Arguments]  ${userPassword}
    input text    ${text_userPassword}    ${userPassword}
Click on Login Button
    click button    ${btn_loginButton}
Verify Succesfull Login
    page should contain    Dashboard
Close All Browser
    close all browsers
