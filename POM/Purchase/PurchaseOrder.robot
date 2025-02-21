*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Library    Collections


*** Variables ***
${PURCHASE_TAB_FROM_PO}     xpath://*[@id="kt_aside_menu"]/ul/li[4]/a
${PURCHASE_ORDER_TAB_FROM_PO}      xpath://*[@id="kt_aside_menu"]/ul/li[4]/div/ul/li[2]/a
${PURCHASE_REQUEST_TAB_FROM_PO}       xpath://*[@id="kt_aside_menu"]/ul/li[4]/div/ul/li[1]/a

${PURCHASE_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[8]/a
${PURCHASE_ORDER_TAB}   xpath://*[@id="kt_aside_menu"]/ul/li[8]/div/ul/li[2]/a

${CLICK_VIEW_PURCHASE_ORDER_BTN}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-purchase-orders/div/p-table/div/div/table/tbody/tr[1]/td/button
${CLICK_VIEW_PUCHASE_ORDER_DETAILS}                xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-purchase-orders/div/p-table/div/div/table/tbody/tr[2]/td/p-table/div/div/table/tbody/tr/td[7]/a

${PO_CLICK_VIEW_PURCHASE_ORDER_BTN}     xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[3]/div/p-table/div/div/table/tbody/tr[1]/td[8]/div[1]/button

${PO_CLICK_RECIEVEING_REQUEST_BTN}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div/button
${PO_CLICK_CONFIRM_RECIEVEING_REQUEST_BTN}    xpath:/html/body/div/div/div[6]/button[1]

${RECIVING_ORDER_BTN}       xpath://*[@id="kt_wrapper"]/div[2]/app-po-view/div/div/div[1]/button

${CLICK_PRICES_OFFERS_TAB}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/tabset/ul/li[3]/a
${CLICK_ADD_NEW_PRICES_OFFERS_BTN}      xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/tabset/div/tab[3]/app-purchase-offers/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

${CLICK_EXPORTER_FIELD}     xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/form/div/div[1]/div/div/ng-select
${SELECT_EXPORTER_FIELD}    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/form/div/div[1]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]

${CLICK_EXPIRY_FIELD}     xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-purchase-offer/div/div/form/div/div[2]/div/input
${SELECT_EXPIRY_DATE}    xpath:/html/body/bs-datepicker-container/div/div/div/div/bs-days-calendar-view/bs-calendar-layout/div[2]/table/tbody/tr[5]/td[3]


${EDIT_PRCIES_BUTTON}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/div[1]/p-table/div/div/table/tbody/tr/td[7]/button
${AVAILABLE_QUANTITY}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/div[1]/p-table/div/div/table/tbody/tr/td[4]/p-celleditor/input
${OFFERED_PRICE}            xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/div[1]/p-table/div/div/table/tbody/tr/td[5]/p-celleditor/input
${CONFIRM_THE_EDIT}         xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-offer/div/div/div[1]/p-table/div/div/table/tbody/tr/td[7]/button[1]
${CLICK_SAVE_PRCIES_OFFER_BTN}      xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-purchase-offer/div/div/div[2]/div/button[1]

${SEND_PRICES_OFFER}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/tabset/div/tab[3]/app-purchase-offers/div/button
${CONFIRM_SENDING_PRICES_OFFER}     xpath:/html/body/div/div/div[6]/button[1]

${CLICK_BUYING_SUGGESTION_TAB}      xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/tabset/ul/li[4]/a
${CLICK_ADD_NEW_BUYING_SUGGESTION_BTN}      xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/tabset/div/tab[4]/app-purchase-suggesstion/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

${EDIT_BUYING_SUGGESTION_BUTTON}          xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-suggesstion/div/div/div[2]/p-table/div/div/table/tbody/tr/td[1]/button
${NEEDED_QUANTITY}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-suggesstion/div/div/div[2]/p-table/div/div/table/tbody/tr/td[4]/div/div[3]/p-celleditor/input
${CONFIRM_THE_EDIT_BUYING_SUGGESTION}   xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-purchase-suggesstion/div/div/div[2]/p-table/div/div/table/tbody/tr/td[1]/button[1]

${CLICK_SAVE_THE_BUYING_SUGGESTION}     xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-purchase-suggesstion/div/div/div[3]/div/button[2]


${MANGER_VIEW_BUYING_SUGGESTION}        xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/tabset/div/tab[4]/app-purchase-suggesstion/app-dynamic-grid/div/div/div/div/div/div[3]/div/p-table/div/div/table/tbody/tr/td[7]/div[1]/button

${MANGER_CLICK_SAVE_BUYING_SUGGESTION}      xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-purchase-suggesstion/div/div/div[4]/div/button[2]
${MANGER_CLICK_CONFIRM_BUYING_SUGGESTION}       xpath:/html/body/div/div/div[6]/button[1]

${PO_CLICK_RECIEVEING_ORDER_BTN}        xpath://*[@id="kt_wrapper"]/div[2]/app-po-view/div/div/div[1]/button
${PO_CLICK_CONFIRM_RECIEVEING_ORDER_BTN}      xpath:/html/body/div/div/div[6]/button[1]

${NAVIGATE_INVOICE_TAB}     xpath://*[@id="kt_wrapper"]/div[2]/app-po-view/div/div/div[2]/div/tabset/ul/li[2]/a
${PO_CLICK_ADD_NEW_INVOICE}     xpath://*[@id="kt_wrapper"]/div[2]/app-po-view/div/div/div[2]/div/tabset/div/tab[2]/app-po-invoices/div/div/div/button

${PO_CLICK_EDIT_NEW_INVOICE}    xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-invoice/div/div/div[2]/div[1]/div/p-table/div/div/table/tbody/tr/td[7]/div/button

${PO_ADD_RECIVED_QUANTITY_TO_INVOICE}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-invoice/div/div/div[2]/div[1]/div/p-table/div/div/table/tbody/tr/td[4]/p-celleditor/input
${PO_APPROVE_INVOICE_EDIT}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/app-create-edit-invoice/div/div/div[2]/div[1]/div/p-table/div/div/table/tbody/tr/td[7]/div/button[1]
${PO_ADD_TRANSACTIONS_FEES}     xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-invoice/div/div/form/div/div[5]/div/input
${PO_CLICK_SEND_INVOICE}        xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-invoice/div/div/div[2]/div[2]/div/button[2]


${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Navigate To Purchase Tab From PO
    Sleep    3s
    Wait Until Page Contains Element    ${PURCHASE_TAB_FROM_PO}     15s
    Click Link    ${PURCHASE_TAB_FROM_PO}

Navigate To Purchase Order Tab From PO
    Sleep    3s
    Wait Until Page Contains Element    ${PURCHASE_ORDER_TAB_FROM_PO}   15s
    Click Link    ${PURCHASE_ORDER_TAB_FROM_PO}

Navigate To Purchase Request Tab From PO
    Wait Until Page Contains Element    ${PURCHASE_REQUEST_TAB_FROM_PO}     15s
    Click Link       ${PURCHASE_REQUEST_TAB_FROM_PO}

Navigate To Purchase Tab
    Sleep    5s
    Wait Until Page Contains Element    ${PURCHASE_TAB}     20s
    Wait Until Element Is Visible    ${PURCHASE_TAB}    15s
    Wait Until Element Is Enabled      ${PURCHASE_TAB}      15s
    Click Link    ${PURCHASE_TAB}

 Navigate To Purchase Order Tab
    Wait Until Page Contains Element    ${PURCHASE_ORDER_TAB}   20s
    Click Link    ${PURCHASE_ORDER_TAB}


View Purchase Order
    Wait Until Page Contains Element    ${CLICK_VIEW_PURCHASE_ORDER_BTN}    15s
    Click Button      ${CLICK_VIEW_PURCHASE_ORDER_BTN}


View Purchase Order Details
    Wait Until Page Contains Element    ${CLICK_VIEW_PUCHASE_ORDER_DETAILS}     15s
    Click Link    ${CLICK_VIEW_PUCHASE_ORDER_DETAILS}

Click Recivieing Order Button
    Wait Until Page Contains Element    ${RECIVING_ORDER_BTN}   10s
    Click Button    ${RECIVING_ORDER_BTN}

Click On View Request Order Details
    Wait Until Page Contains Element    ${PO_CLICK_VIEW_PURCHASE_ORDER_BTN}     15s
    Scroll Element Into View    ${PO_CLICK_VIEW_PURCHASE_ORDER_BTN}
    Wait Until Page Contains Element    ${PO_CLICK_VIEW_PURCHASE_ORDER_BTN}     10s
    Click Button    ${PO_CLICK_VIEW_PURCHASE_ORDER_BTN}


Click On Reciveing Request Btn
    Sleep    5s
    Wait Until Page Contains Element    ${PO_CLICK_RECIEVEING_REQUEST_BTN}      10s
    Click Button    ${PO_CLICK_RECIEVEING_REQUEST_BTN}
    Wait Until Page Contains Element    ${PO_CLICK_CONFIRM_RECIEVEING_REQUEST_BTN}  10s
    Click Button    ${PO_CLICK_CONFIRM_RECIEVEING_REQUEST_BTN}

Add New Prices Offers
    Wait Until Page Contains Element    ${CLICK_PRICES_OFFERS_TAB}   10s
    Sleep    5s
    Click Link    ${CLICK_PRICES_OFFERS_TAB}
    Sleep    3s
    Wait Until Page Contains Element    ${CLICK_ADD_NEW_PRICES_OFFERS_BTN}    10s
    Click Button    ${CLICK_ADD_NEW_PRICES_OFFERS_BTN}
    Wait Until Page Contains Element    ${EDIT_PRCIES_BUTTON}   10s
    Sleep    5s
    Click Button    ${EDIT_PRCIES_BUTTON}
    Input Text    ${AVAILABLE_QUANTITY}     10
    Input Text    ${OFFERED_PRICE}      200
    Click Button    ${CONFIRM_THE_EDIT}
    Wait Until Page Contains Element    ${CLICK_EXPORTER_FIELD}     10s
    Click Element    ${CLICK_EXPORTER_FIELD}
    Wait Until Page Contains Element    ${SELECT_EXPORTER_FIELD}    10s
    Click Element    ${SELECT_EXPORTER_FIELD}
    Wait Until Page Contains Element    ${CLICK_EXPIRY_FIELD}   10s
    Click Element    ${CLICK_EXPIRY_FIELD}
    Wait Until Page Contains Element    ${SELECT_EXPIRY_DATE}   10s
    Click Element    ${SELECT_EXPIRY_DATE}
    Sleep    5s
    Wait Until Page Contains Element    ${CLICK_SAVE_PRCIES_OFFER_BTN}  10s
    Click Button    ${CLICK_SAVE_PRCIES_OFFER_BTN}
    Sleep    5s


Send Prices Offer
    Sleep    5s
    Click Link    ${CLICK_PRICES_OFFERS_TAB}
    Sleep    3s
    Wait Until Page Contains Element    ${SEND_PRICES_OFFER}    10s
    Click Button    ${SEND_PRICES_OFFER}
    Wait Until Page Contains Element     ${CONFIRM_SENDING_PRICES_OFFER}    10s
    Click Button    ${CONFIRM_SENDING_PRICES_OFFER}


Navigate To Buying Suggestion Tab
    Sleep    10s
    Wait Until Page Contains Element    ${CLICK_BUYING_SUGGESTION_TAB}  15s
    Click Link    ${CLICK_BUYING_SUGGESTION_TAB}


Add New Buying Suggestion
    Navigate To Buying Suggestion Tab
    Sleep    5s
    Click Button    ${CLICK_ADD_NEW_BUYING_SUGGESTION_BTN}
    Sleep    5s
    Wait Until Page Contains Element    ${EDIT_BUYING_SUGGESTION_BUTTON}    15
    Click Button    ${EDIT_BUYING_SUGGESTION_BUTTON}
    Input Text    ${NEEDED_QUANTITY}     10
    Click Button    ${CONFIRM_THE_EDIT_BUYING_SUGGESTION}
    Wait Until Page Contains Element    ${CLICK_SAVE_THE_BUYING_SUGGESTION}     10s
    Click Button    ${CLICK_SAVE_THE_BUYING_SUGGESTION}
    Sleep    3s

View Buying Suggestion
    Click Button    ${MANGER_VIEW_BUYING_SUGGESTION}


Manger Accept Buying Suggestion
    Sleep    3s
    Wait Until Page Contains Element    ${MANGER_CLICK_SAVE_BUYING_SUGGESTION}      10s
    Click Button    ${MANGER_CLICK_SAVE_BUYING_SUGGESTION}
    Wait Until Page Contains Element     ${MANGER_CLICK_CONFIRM_BUYING_SUGGESTION}      10s
    Click Button    ${MANGER_CLICK_CONFIRM_BUYING_SUGGESTION}
    Sleep    5s

Purchase Officer Recieve the Purchase Order
    Wait Until Page Contains Element    ${PO_CLICK_RECIEVEING_ORDER_BTN}    15s
    Click Button    ${PO_CLICK_RECIEVEING_ORDER_BTN}
    Wait Until Page Contains Element    ${PO_CLICK_CONFIRM_RECIEVEING_ORDER_BTN}    15s
    Click Button    ${PO_CLICK_CONFIRM_RECIEVEING_ORDER_BTN}



Purchase Officer Add New Buying Invoice
    Wait Until Page Contains Element    ${NAVIGATE_INVOICE_TAB}     15s
    Click Link    ${NAVIGATE_INVOICE_TAB}
    Wait Until Page Contains Element    ${PO_CLICK_ADD_NEW_INVOICE}     10s
    Click Button    ${PO_CLICK_ADD_NEW_INVOICE}
    
Purchase Officer Edit New Buying Invoice
    Wait Until Page Contains Element    ${PO_CLICK_EDIT_NEW_INVOICE}    15s
    Click Button    ${PO_CLICK_EDIT_NEW_INVOICE}
    Input Text    ${PO_ADD_RECIVED_QUANTITY_TO_INVOICE}    10
    Wait Until Page Contains Element    ${PO_APPROVE_INVOICE_EDIT}  10s
    Click Button    ${PO_APPROVE_INVOICE_EDIT}
    Input Text    ${PO_ADD_TRANSACTIONS_FEES}    20
    Wait Until Page Contains Element    ${PO_CLICK_SEND_INVOICE}    10s
    Click Button    ${PO_CLICK_SEND_INVOICE}

