*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot

*** Variables ***
${TRANSFER_ORDER_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[11]/div/ul/li[4]/a

${ADD_NEW_TRANSFER_BTN}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button


${EXCHANGE_STORE_FIELD}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div/div[1]/div/select
${SELECT_EXCHANGE_STORE}     xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form/div/div[1]/div/select/option[4]

${RECIEVING_STORE_FIELD}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div/div[2]/div/select
${SELECT_RECIEVING_STORE}     xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form/div/div[2]/div/select/option[3]



${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
#*** Test Cases ***
Navigate To Transfer Tab
    Sleep    3s
    Click Link    اوامر النقل
    #${TRANSFER_ORDER_TAB}

Add New Transfer BTN
    Sleep    5s
    Click Button    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button
         #${ADD_NEW_TRANSFER_BTN}
    Sleep    5s


Fill Transfer Data
    Click Element    ${EXCHANGE_STORE_FIELD}
    Sleep    3s
    Click Element    ${SELECT_EXCHANGE_STORE}

    Click Element    ${RECIEVING_STORE_FIELD}
    Sleep    3s
    Click Element    ${SELECT_RECIEVING_STORE}
    Sleep    3s




Fill Elements Transfer Data
    Sleep    5s
    Click Element      xpath://tbody/tr[2]/td[1]/input[1]
    Sleep    3s
    Input Text    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[2]/p-table/div/div/table/tbody/tr[2]/td[5]/input    2

   # Click Element    xpath://tbody/tr[4]/td[1]/input[1]
  #  Input Text    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[2]/p-table/div/div/table/tbody/tr[2]/td[5]/input    2


    Click Button    id:save

    Sleep    5s
