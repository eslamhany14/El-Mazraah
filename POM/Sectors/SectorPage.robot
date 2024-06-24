*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${FARM_PLANNING_TAB}    xpath://*[@id="kt_aside_menu"]/ul/li[6]/a
${SECTORS_TAB}                   xpath://*[@id="kt_aside_menu"]/ul/li[6]/div/ul/li[1]/a
${CREATE_NEW_SECTOR_BTN}         xpath://*[@id="kt_wrapper"]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[1]/div/button

*** Keywords ***
Navigate To Sectors Page
    Sleep    7s
    Click Element    ${FARM_PLANNING_TAB}
    Click Element    ${SECTORS_TAB}

Click Create New Sectors Button
    Sleep    5s
    Click Button    ${CREATE_NEW_SECTOR_BTN}