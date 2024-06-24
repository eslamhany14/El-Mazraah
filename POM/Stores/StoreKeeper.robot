*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot

*** Variables ***
${STORE_MANGMENT_TAB_FROM_KEEPER}       xpath://*[@id="kt_aside_menu"]/ul/li[3]/a

${STORE_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[3]/div/ul/li[2]/a

${VIEW_MY_STORE_BTN}       xpath://tbody/tr[1]/td[4]/div[1]/button[1]

${VIEW_MY_FIRST_ORDER}      xpath://tbody/tr[1]/td[4]/div[1]/button[1]


${INPUT_OUTGOING_QUANTITY}         xpath://tbody/tr[1]/td[5]/span[1]/input[1]

${COMPLETE_OUTGOING_BUTTON}     xpath://button[contains(text(),'إتمام الصرف')]

${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Navigate To Store Tab From StoreKeeper
    Click Link    ${STORE_MANGMENT_TAB_FROM_KEEPER}
    Sleep    5s
    Click Link    ${STORE_TAB}
    Sleep    5s

View MyStore BTN
    #Scroll Element Into View    ${VIEW_MY_STORE_BTN}
    Sleep    5s
    Click Element    ${VIEW_MY_STORE_BTN}
    Sleep    5s
    Click Button    ${VIEW_MY_FIRST_ORDER}
    Sleep    5s



Fill Outgoing Data
    Input Text    ${INPUT_OUTGOING_QUANTITY}    1
    Sleep    5s
    Click Button    ${COMPLETE_OUTGOING_BUTTON}






