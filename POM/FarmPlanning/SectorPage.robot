*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${FARM_PLANNING_TAB}    xpath://*[@id="kt_aside_menu"]/ul/li[5]/a
${SECTORS_TAB}                   xpath://*[@id="kt_aside_menu"]/ul/li[5]/div/ul/li[1]/a
${CREATE_NEW_SECTOR_BTN}         xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button


${SECTOR_ID}            id:code
${STORES}             xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[1]/div[2]/div/ng-select
${SELCET_STORE}       id:a502dd93f8c5-2

${SECTOR_SUPERVISOR}    xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[1]/div/ng-select
${SELCET_SECTOR_SUPERVISOR}       xpath:/html/body/app-root/ng-component/div/default-layout/div[1]/div/div[2]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[1]/div/ng-select/ng-dropdown-panel/div/div[2]/div[1]


${SPECIALIZATION}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[2]/div/ng-select
${CHOOSE_SPECIALIZATION}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[2]/div/ng-select

${ADD_SECTOR_BTN}       id:add_SubItem

*** Keywords ***
Navigate To Sectors Page
    Sleep    7s
    Click Element    ${FARM_PLANNING_TAB}
    Sleep    2s
    Click Element    ${SECTORS_TAB}

Click Create New Sectors Button
    Sleep    5s
    Click Button    ${CREATE_NEW_SECTOR_BTN}

Fill New Sector Form
    #[Arguments]    ${NEW_USERNAME}    ${role}    ${salary}    ${Nname}    ${phone}    ${status}    ${qualification}
    Sleep    5s
    Input Text    ${SECTOR_ID}      500

    Click Element    ${STORES}
    Sleep    3s
    Click Link    xpath:/html/body/ng-dropdown-panel/div/div[2]/div[3]


    Click Element    ${SECTOR_SUPERVISOR}
    Click Element    ${SELCET_SECTOR_SUPERVISOR}

    #Click Element    ${SELCET_SECTOR_SUPERVISOR}

    Click Element   ${SPECIALIZATION}
    Click Element   ${CHOOSE_SPECIALIZATION}

    Click Button    ${ADD_SECTOR_BTN}

    Sleep    5s

    Click Button    xpath://*[@id="save"]
