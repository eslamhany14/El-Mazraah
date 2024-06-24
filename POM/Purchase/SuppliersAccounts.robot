*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Library    Collections


*** Variables ***
${SUPPLIERS_TAB}     xpath://*[@id="kt_aside_menu"]/ul/li[4]/div/ul/li[4]/a

${VIEW_SUPPLIER_DETAILS}    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[3]/div/p-table/div/div/table/tbody/tr[1]/td[4]/div[1]/button

${ADD_PAYMENT_RECIEVE}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[1]/div/button
${REQUAIRED_MONEY}      xpath://*[@id="VendorPayment_AmountRequired"]
${SAVE_PAYMENT_RECIEVE}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/createoreditvendorpaymentmodal/div/div/div/form/div[2]/div[2]/button[2]
${CONFIRM_SAVE_PAYMENT_RECIEVE}     xpath:/html/body/div/div/div[6]/button[1]


${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Navigate To Suppliers Tab From PO
    Click Link    ${SUPPLIERS_TAB}
    Wait Until Page Contains       حسابات الموردين


PO View Supplier Deatils
    Wait Until Page Contains       حسابات الموردين
    Click Button    ${VIEW_SUPPLIER_DETAILS}
    Sleep    3s

PO Add New Payment Recieve
    Click Button    ${ADD_PAYMENT_RECIEVE}
    Sleep    3s
    Input Text    ${REQUAIRED_MONEY}    1000
    Click Button    ${SAVE_PAYMENT_RECIEVE}
    Click Button    ${CONFIRM_SAVE_PAYMENT_RECIEVE}
    Sleep    5s


