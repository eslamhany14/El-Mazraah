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

${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
 Navigate To Purchase Request Tab
    Sleep    5s
    Click Link    ${PURCHASE_REQUEST_TAB}


Click On Add new Purchase Order
    Sleep    3s
    Click Button      ${ADD_NEW_PURCHASE_ORDER_BTN}

Fill Order Request Details
        Wait Until Element Is Visible    ${CLICK_ON_CALENDER}
        Click Element    ${CLICK_ON_CALENDER}
        Click Element    ${SELECT_DATE}

        Click Element    ${CLICK_ON_PURCHASE_OFFICER_FIELD}
        Click Element    ${CHOOSE_PURCHASE_OFFICER}

        Click Element    ${CLICK_ON_PURCHASE_TYPE_FIELD}
        Click Element    ${CHOOSE_PURCHASE_TYPE}

        Click Element    ${CLICK_ON_PURCHASE_STORE_FIELD}
        Click Element    ${CHOOSE_PURCHASE_STORE}

        Click Button     ${CLICK_ON_NEXT_BTN}






Add Purchase Request
        Sleep    5s
        Click Element    css:ng-select[id='ItemType'] > div > div > div:nth-of-type(2) > input
        Log    5
        Click Element    xpath://span[contains(text(),'سماد')]
        Log    6
        Sleep    5s
        Click Element    css:ng-select[id='Item'] > div > div > div:nth-of-type(2) > input
      Log    7
        Click Element    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form[2]/div/div[2]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div
      Log    8
        Input Text       id:Qnty    10
        Log    9
        Click Element    css:div[class*='content'] > form:nth-of-type(2) > div > div:nth-of-type(5) > button
       Log    10
        Sleep    5s
        Click Element    css:div[class*='action_btns'] > button:nth-of-type(2)






