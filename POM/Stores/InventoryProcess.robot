*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot

*** Variables ***
${Inventory_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[9]/div/ul/li[3]/a
${ADD_NEW_INVENTORY_BTN}       xpath://*[@id="kt_wrapper"]/div[2]/app-inventory/div/div[1]/div[1]/a
${NEW_INVENTORY_NAME_FIELD}         xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-inventory-process/div/div/form/div[1]/div[1]/div/input

${NEW_STORE_NAME}       StoreSection
${SUBMIT_NEW_STORE_SECTION_NAME}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/createoreditstoresectormodal/div/div/div/form/div[2]/div[2]/button[2]


${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Navigate To Inventory Tab
    Click Link    ${Inventory_TAB}
    Sleep    5s

Add New Inventory BTN
    Click Link    ${ADD_NEW_INVENTORY_BTN}
    Sleep    5s

Fill Inventory Data
    Input Text    ${NEW_INVENTORY_NAME_FIELD}    EslamIventory

    #target store
    Click Element    xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-inventory-process/div/div/form/div[1]/div[2]/div/ng-select
    Sleep    3s
    Click Element    xpath:/html/body/app-root/ng-component/div/default-layout/div[2]/div/div[2]/div[2]/app-create-edit-inventory-process/div/div/form/div[1]/div[2]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]


    #element status
    Click Element    xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-inventory-process/div/div/form/div[2]/div[2]/div/div[3]/label
    Sleep    3s


    #start inventory
    Click Button    xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-inventory-process/div/div/div[1]/button
    Sleep    5s
    #confirmation
    Click Button    xpath:/html/body/div/div/div[6]/button[1]
    Sleep    3s
    #Input Text        text

Fill Elements Inventory Data
    Input Text      xpath://*[@id="pr_id_9-table"]/tbody/tr[2]/td[3]/input      200
    Input Text    xpath://*[@id="pr_id_9-table"]/tbody/tr[2]/td[4]/div/input    200
    
    Input Text    xpath://*[@id="pr_id_9-table"]/tbody/tr[4]/td[3]/input    200
    Input Text    xpath://*[@id="pr_id_9-table"]/tbody/tr[4]/td[4]/div/input     200


    Click Button    xpath://*[@id="kt_wrapper"]/div[2]/app-create-edit-inventory-process/div/div/div[3]/button[3]
