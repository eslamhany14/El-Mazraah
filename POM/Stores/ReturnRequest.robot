*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot

*** Variables ***
${RETURN_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[9]/div/ul/li[5]/a

${ADD_NEW_RETURN_BTN}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

${RETURN_STORE_FIELD}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form[1]/div/div[1]/div/ng-select
${SELECT_RETURN_STORE}     xpath:/html/body/app-root/ng-component/div/default-layout/div[2]/div/div[2]/div[2]/ng-component/div/div/form[1]/div/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]

${SUPPLIER_FIELD}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form[1]/div/div[2]/div/div/ng-select
${SELECT_SUPPLIER_NAME}     xpath:/html/body/app-root/ng-component/div/default-layout/div[2]/div/div[2]/div[2]/ng-component/div/div/form[1]/div/div[2]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]



${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})
    Log    ${x}, ${y}

Navigate To Return Tab
    Sleep    5s
    #Wait Until Page Contains Element    xpath://*[@id="kt_aside_menu"]/ul/li[11]/a
    #Scroll Element Into View    xpath://*[@id="kt_aside_menu"]/ul/li[11]/a
    #Scroll Element Into View        ${RETURN_TAB}
    Scroll To Element    xpath://*[@id="kt_aside_menu"]/ul/li[11]/a
    Sleep    5s
    Click Link    ${RETURN_TAB}
    Sleep    5s

Add New Return BTN
    Click Button    ${ADD_NEW_RETURN_BTN}
    Sleep    5s

Fill Return Data
    Click Element    ${RETURN_STORE_FIELD}
    Click Element    ${SELECT_RETURN_STORE}

    Click Element    ${SUPPLIER_FIELD}
    Click Element    ${SELECT_SUPPLIER_NAME}




Fill Elements Return Data
    Input Text      xpath://*[@id="pr_id_13-table"]/tbody/tr[2]/td[4]/input      2
    Input Text    xpath://*[@id="pr_id_13-table"]/tbody/tr[2]/td[5]/input    2

    Input Text    xpath://*[@id="pr_id_13-table"]/tbody/tr[2]/td[5]/input    2
    Input Text    xpath://*[@id="pr_id_13-table"]/tbody/tr[2]/td[5]/input    2


    Click Button    xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[2]/div/button[2]
