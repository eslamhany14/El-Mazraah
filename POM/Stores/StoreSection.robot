*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Library    Collections


*** Variables ***

${scroll}       xpath://*[@id="kt_aside_menu"]/ul/li[14]/a

${STORE_SECTION_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[9]/div/ul/li[1]/a
${ADD_NEW_STORE_SECTION_BTN}       xpath://body/app-root[1]/ng-component[1]/div[1]/default-layout[1]/div[2]/div[1]/div[2]/div[2]/ng-component[1]/app-dynamic-grid[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/button[1]
${NEW_STORE_NAME_FIELD}         xpath://*[@id="kt_wrapper"]/div[2]/ng-component/createoreditstoresectormodal/div/div/div/form/div[2]/div[1]/input
${NEW_STORE_NAME}       StoreSection
${SUBMIT_NEW_STORE_SECTION_NAME}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/createoreditstoresectormodal/div/div/div/form/div[2]/div[2]/button[2]


${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview

${element}      xpath://body/app-root[1]/ng-component[1]/div[1]/default-layout[1]/div[1]/div[1]/div[1]/div[1]/side-bar-menu[1]/div[1]/div[1]/div[2]/div[1]


*** Keywords ***
Navigate To Store Section Tab
    Sleep    5s
    Scroll Element Into View    ${scroll}
    Sleep    5s
    Wait Until Element Is Visible    ${STORE_SECTION_TAB}
    Click Link    ${STORE_SECTION_TAB}


Add new Store Section
    Wait Until Element Is Visible    ${ADD_NEW_STORE_SECTION_BTN}
    Click Button    ${ADD_NEW_STORE_SECTION_BTN}
    Wait Until Element Is Visible    ${NEW_STORE_NAME_FIELD}
    Input Text    ${NEW_STORE_NAME_FIELD}     ${NEW_STORE_NAME}
    Click Button     ${SUBMIT_NEW_STORE_SECTION_NAME}



