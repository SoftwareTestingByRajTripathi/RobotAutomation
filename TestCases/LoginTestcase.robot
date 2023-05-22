*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeyword.robot
*** Variables ***
${Browser}    chrome
${Site_Url}    https://admin-demo.nopcommerce.com/
${userName}   admin@yourstore.com
${userPassword}    admin
*** Test Cases ***
TC_01 Verify Login functionality with valid data
    Open Login Browser   ${Site_Url}    ${Browser}
    Enter User Name    ${userName}
    Enter Password    ${userPassword}
    Click on Login Button
    Sleep    3
    Verify Succesfull Login
    Close All Browser