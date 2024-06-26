*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot

*** Variables ***
${STORE_MANGMENT_TAB}       xpath://*[@id="kt_aside_menu"]/ul/li[9]/a

${LAST_SIDEMENU_STORE_ELEMENT}    xpath://*[@id="kt_aside_menu"]/ul/li[11]/div/ul/li[5]/a

#${STORE_SECTION_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[12]/a


${STORES_TAB}        xpath://*[@id="kt_aside_menu"]/ul/li[9]/div/ul/li[2]/a
${ADD_NEW_STORE_BTN}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button
${STORE_TYPE}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div/div/div/div[1]/p-radiobutton/div/div[2]
${NEW_STORE_NAME_FIELD}         id:StoreName
${NEW_STORE_NAME}       StoreNameAutomation

${STORE_SECTOR}        name:StoreSectores
${SELECT_STORE_SECTOR}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form/div[2]/div[3]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]

${STORE_KEEPER}        name:storeKeeper
${SELECT_STORE_KEEPER}      xpath:/html/body/ng-dropdown-panel/div/div[2]/div[1]

${ELEMENT_CLASSIFICATION}       xpath://*[@id="ItemClass"]
${SELECT_ELEMENT_CLASSIFICATION}        xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[1]/div/select/option[2]

${ELEMENT_TYPE}     id:ItemType
${SELECT_ELEMENT_TYPE}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[2]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]

${ELEMENT_NAME}     id:Item
${SELECT_ELEMENT_NAME}      xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[3]/div/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]

${PACKAGE_PRICE_FIELD}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[4]/div/div/input
${PACKAGE_PRICE}        100

${NUMBER_OF_CLOSED_PACKAGES_FIELD}        xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[5]/div/input
${NUMBER_OF_CLOSED_PACKAGES}        200

${AMOUNT_OF_OPENED_PACKAGES_FIELD}      xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[6]/div/div/input
${AMOUNT_OF_OPENED_PACKAGES}        200

${SELECT_STORE_SECTION_FIELD}       xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[7]/div/select
${SELECT_STORE_SECTION}     1

${CLICK_ADD_TO_STORE_BUTTON}      xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/div[1]/form/div[1]/div[8]/button




${ENVIRONMENT}  qa
${BROWSER}      chrome

&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
#Scroll Into View All Store Sections
##    Sleep    5s
 #   Scroll Element Into View    ${STORE_SECTION_TAB}

open Store Mangment Tab
    Sleep    10s
    Click Link    إدارة المخازن


Navigate To Stores Tab
    Click Link    ${STORES_TAB}


Add New Store BTN
    Sleep    3s
    Click Button    ${ADD_NEW_STORE_BTN}


Fill Store Data
    Sleep    3s
    #store type
    Click Element    ${STORE_TYPE}
    Sleep    2s

    Input Text    ${NEW_STORE_NAME_FIELD}    ${NEW_STORE_NAME}

    Click Element    ${STORE_SECTOR}
    Sleep    2s
    Click Element    ${SELECT_STORE_SECTOR}


    Click Element        ${STORE_KEEPER}
    Sleep    2s
    Click Element       ${SELECT_STORE_KEEPER}


Fill Store Elements Data
    sleep   3s
    Click Element    ${ELEMENT_CLASSIFICATION}
    Sleep    2s
    Click Element    ${SELECT_ELEMENT_CLASSIFICATION}
    Sleep    2s
    Click Element    ${ELEMENT_TYPE}
      Sleep    2s
    Click Element    ${SELECT_ELEMENT_TYPE}
    Sleep    3s
    Click Element    ${ELEMENT_NAME}
      Sleep    2s
    Click Element    ${SELECT_ELEMENT_NAME}

    Sleep    3s

    Input Text    ${PACKAGE_PRICE_FIELD}        ${PACKAGE_PRICE}


    Input Text    ${NUMBER_OF_CLOSED_PACKAGES_FIELD}   ${NUMBER_OF_CLOSED_PACKAGES}

    Input Text    ${AMOUNT_OF_OPENED_PACKAGES_FIELD}   ${AMOUNT_OF_OPENED_PACKAGES_FIELD}

    Select From List By Index    ${SELECT_STORE_SECTION_FIELD}     ${SELECT_STORE_SECTION}

    Click Button    ${CLICK_ADD_TO_STORE_BUTTON}
    Sleep    5s