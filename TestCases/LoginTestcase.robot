*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeyword.robot
*** Variables ***
${Browser}    chrome
${Site_Url}    https://admin-demo.nopcommerce.com/
${userName}   admin@yourstore.com
${userPassword}    admin
${invaliduserName}    adm@yourstore.com
${invalidPasword}    adm123
*** Test Cases ***
TC_01 Verify Login functionality with valid data
    Open Login Browser   ${Site_Url}    ${Browser}
    Enter User Name    ${userName}
    Enter Password    ${userPassword}
    Click on Login Button
    Sleep    3
    Verify Succesfull Login
    Close All Browser
TC_02 Verify Login Functionlity with invalid data
    Open Login Browser   ${Site_Url}    ${Browser}
    Enter User Name    ${invaliduserName}
    Enter Password    ${invalidPasword}
    Click on Login Button
    Sleep    3
    Error message shown while invaild login
    Close All Browser
