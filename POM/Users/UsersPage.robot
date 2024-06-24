*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${EMPLOYEES_MANAGEMENT_TAB}    xpath://*[@id="kt_aside_menu"]/ul/li[4]/a
${USERS_TAB}                   xpath://*[@id="kt_aside_menu"]/ul/li[4]/div/ul/li/a
${CREATE_NEW_ACC_BTN}         xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

*** Keywords ***
Navigate To Users Page
    Sleep    7s
    Click Element    ${EMPLOYEES_MANAGEMENT_TAB}
    Click Element    ${USERS_TAB}

Click Create New Account Button
    Sleep    5s
    Click Button    ${CREATE_NEW_ACC_BTN}