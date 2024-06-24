*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN_NAME}    name:userNameOrEmailAddress
${LOGIN_PASS}    name:password
${LOGIN_BTN}     xpath=/html/body/app-root/ng-component/div/div/ng-component/div[1]/form/button

${OpenSettings}     xpath://*[@id="kt_header"]/div/div[2]/app-profile-setting/div/a
${LogOutBtn}        xpath://*[@id="kt_header"]/div/div[2]/app-profile-setting/div/div/ul/li[2]/a

*** Keywords ***
Login
    [Arguments]    ${Loginusername}    ${Loginpassword}
    Sleep    5s
    Input Text    ${LOGIN_NAME}    ${Loginusername}
    Input Text    ${LOGIN_PASS}    ${Loginpassword}
    Click Button    ${LOGIN_BTN}

LoginASManger
    Wait Until Element Is Visible    ${LOGIN_NAME}
    Input Text    ${LOGIN_NAME}    mangerrr
    Input Text    ${LOGIN_PASS}    Test@1234
    Click Button    ${LOGIN_BTN}

LogOut
    Click Link    ${OpenSettings}
    Click Link    ${LogOutBtn}