*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Library    Collections


*** Variables ***
${PURCHASE_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[8]/a
${PURCHASE_REQUEST_TAB}   xpath://*[@id="kt_aside_menu"]/ul/li[8]/div/ul/li[1]/a

${ADD_NEW_PURCHASE_ORDER_BTN}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

${CLICK_ON_CALENDER}    xpath://*[@id="DueDate"]
${SELECT_DATE}      xpath:/html/body/bs-datepicker-container/div/div/div/div/bs-days-calendar-view/bs-calendar-layout/div[2]/table/tbody/tr[4]/td[7]

${CLICK_ON_PURCHASE_OFFICER_FIELD}     css:ng-select[id='DirectedTo'] > div > div > div:nth-of-type(2) > input
${CHOOSE_PURCHASE_OFFICER}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-new-pr-modal/div/div/div/form/div[2]/div/div[2]/div/ng-select/ng-dropdown-panel/div/div[2]/div[2]

${CLICK_ON_PURCHASE_TYPE_FIELD}            css:ng-select[id='PurchaseType'] > div > div > div:nth-of-type(2) > input
${CHOOSE_PURCHASE_TYPE}         xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-new-pr-modal/div/div/div/form/div[2]/div/div[3]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]

${CLICK_ON_PURCHASE_STORE_FIELD}     css:ng-select[id='Store'] > div > div > div:nth-of-type(2) > input
${CHOOSE_PURCHASE_STORE}              xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-new-pr-modal/div/div/div/form/div[2]/div/div[4]/div/ng-select/ng-dropdown-panel/div/div[2]/div[3]

${CLICK_ON_NEXT_BTN}        xpath://button[contains(text(),'التالي')]


${ELEMENT_TYPE_FIELD}     css:ng-select[id='ItemType'] > div > div > div:nth-of-type(2) > input
${CHOOSE_ELEMENT_TYPE_FIELD}        xpath://span[contains(text(),'سماد')]


${ELEMENT_NAME_FIELD}       css:ng-select[id='Item'] > div > div > div:nth-of-type(2) > input
${CHOOSE_ELEMENT_NAME_FIELD}        xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form[2]/div/div[2]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div

${NUMBER_OF_PACKAGES_FIELD}     id:Qnty
${NUMBER_OF_PACKAGES}       10


${ADD_ELEMENT_BTN}      css:div[class*='content'] > form:nth-of-type(2) > div > div:nth-of-type(5) > button
${SEND_PURCHASE_REQUEST}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[2]/button[2]


${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
 Navigate To Purchase Request Tab
    Wait Until Page Contains Element        ${PURCHASE_REQUEST_TAB}     15s
    Click Link    ${PURCHASE_REQUEST_TAB}


Click On Add new Purchase Order
    Wait Until Page Contains Element    ${ADD_NEW_PURCHASE_ORDER_BTN}        15s
    Click Button      ${ADD_NEW_PURCHASE_ORDER_BTN}

Fill Order Request Details
        Wait Until Page Contains Element    ${CLICK_ON_CALENDER}       15s
        Wait Until Element Is Enabled    ${CLICK_ON_CALENDER}       10s
        Sleep    5s
        Click Element    ${CLICK_ON_CALENDER}
        Wait Until Element Is Enabled    ${SELECT_DATE}     10s
        Click Element    ${SELECT_DATE}

        Wait Until Page Contains Element    ${CLICK_ON_CALENDER}       10s
        Click Element    ${CLICK_ON_PURCHASE_OFFICER_FIELD}
        Wait Until Page Contains Element    ${CHOOSE_PURCHASE_OFFICER}       10s
        Click Element    ${CHOOSE_PURCHASE_OFFICER}


        Wait Until Page Contains Element    ${CLICK_ON_PURCHASE_TYPE_FIELD}       10s
        Click Element    ${CLICK_ON_PURCHASE_TYPE_FIELD}
        Wait Until Page Contains Element    ${CHOOSE_PURCHASE_TYPE}       10s
        Click Element    ${CHOOSE_PURCHASE_TYPE}

        Wait Until Page Contains Element    ${CLICK_ON_PURCHASE_STORE_FIELD}       10s
        Click Element    ${CLICK_ON_PURCHASE_STORE_FIELD}
        Wait Until Page Contains Element    ${CHOOSE_PURCHASE_STORE}       10s
        Click Element    ${CHOOSE_PURCHASE_STORE}

        Wait Until Page Contains Element    ${CLICK_ON_NEXT_BTN}       10s
        Click Button     ${CLICK_ON_NEXT_BTN}





Add Purchase Request
        Wait Until Page Contains Element    ${ELEMENT_TYPE_FIELD}   10s
        Click Element    ${ELEMENT_TYPE_FIELD}
        Sleep    5s
        Wait Until Page Contains Element    ${CHOOSE_ELEMENT_TYPE_FIELD}    10s
        Click Element    ${CHOOSE_ELEMENT_TYPE_FIELD}
        Wait Until Page Contains Element    ${ELEMENT_NAME_FIELD}   10s
        Click Element    ${ELEMENT_NAME_FIELD}
        Sleep    5s
        Wait Until Page Contains Element    ${CHOOSE_ELEMENT_NAME_FIELD}    10s
        Click Element    ${CHOOSE_ELEMENT_NAME_FIELD}
        Wait Until Page Contains Element    ${NUMBER_OF_PACKAGES_FIELD}     10s
        Input Text        ${NUMBER_OF_PACKAGES_FIELD}     ${NUMBER_OF_PACKAGES}
        Wait Until Page Contains Element    ${ADD_ELEMENT_BTN}      10s
        Click Element       ${ADD_ELEMENT_BTN}
        Sleep    3s
        Wait Until Page Contains Element    ${SEND_PURCHASE_REQUEST}    15s
        Click Button       ${SEND_PURCHASE_REQUEST}
        Sleep    3s







