*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SECTOR_ID}            id:code
${STORES}             xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[1]/div[2]/div/ng-select
${SELCET_STORE}       id:a502dd93f8c5-2

${SECTOR_SUPERVISOR}    xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[1]/div/ng-select
${SELCET_SECTOR_SUPERVISOR}      xpath:/html/body/ng-dropdown-panel/div/div[2]/div[3]

${SPECIALIZATION}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[2]/div/ng-select
${CHOOSE_SPECIALIZATION}     xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div/div/form/div[1]/div/div[2]/div[2]/div/ng-select

${ADD_SECTOR_BTN}       id:add_SubItem

*** Keywords ***
Fill New Sector Form
    #[Arguments]    ${NEW_USERNAME}    ${role}    ${salary}    ${Nname}    ${phone}    ${status}    ${qualification}
    Sleep    5s
    Input Text    ${SECTOR_ID}      500

    Click Element    ${STORES}
    Sleep    3s
    Click Link    xpath://*[@id="a502dd93f8c5-2"]
    #Press Key    ${STORES}       \\13
    #Click Element    ${SELCET_STORE}

    #Sleep    5s

    Click Element    ${SECTOR_SUPERVISOR}
    Click Element    id:a502dd93f8c5-3

    #Click Element    ${SELCET_SECTOR_SUPERVISOR}
    
    Click Element   ${SPECIALIZATION}    
    Click Element   ${CHOOSE_SPECIALIZATION}   
    
    Click Button    ${ADD_SECTOR_BTN}


    Sleep    5s
    
