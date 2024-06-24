*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Resource    ../Stores/StoreMangment.robot
Resource    ../Stores/TransferOrder.robot
Resource    ../Stores/ReturnRequest.robot
Resource    ../Stores/StoreSection.robot
Resource    ../Stores/InventoryProcess.robot
Resource    ../Stores/StoreKeeper.robot
Resource    ../Sectors/SectorPage.robot
Resource    ../Sectors/NewSectorsPage.robot

Suite Setup    Set Selenium Timeout    10 seconds


*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234


*** Test Cases ***
Test Case
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    #Navigate To Users Page
    Sleep    3s
    Navigate To Sectors Page
    Click Create New Sectors Button
    Fill New Sector Form