*** Settings ***
Library     SeleniumLibrary
Resource    ../../POM/Stores/StoreMangment.robot
Resource    ../../POM/Stores/TransferOrder.robot
Resource    ../../POM/Stores/ReturnRequest.robot
Resource    ../../POM/Stores/StoreSection.robot
Resource    ../../POM/Stores/InventoryProcess.robot
Resource    ../../POM/Stores/StoreKeeper.robot
Resource    ../../POM/LoginPage.robot

#Suite Setup    Set Selenium Timeout    10 seconds


*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234


*** Test Cases ***
CREATE NEW STORE_SECTIONS TC
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginASManger
    open Store Mangment Tab
    Navigate To Store Section Tab
    Add new Store Section
#CREATE NEW STORE
    #open Store Mangment Tab
    Navigate To Stores Tab
    Add New Store BTN
    Fill Store Data
    Fill Store Elements Data
    Close Browser


CREATE NEW Inventory
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    open Store Mangment Tab
    Navigate To Inventory Tab
    Add New Inventory BTN
    Fill Inventory Data
    Fill Elements Inventory Data
    Close Browser


CREATE NEW RETURN REQUEST
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    Sleep    10s
    #open Store Mangment Tab
    Navigate To Return Tab
    Add New Return BTN
    Sleep    5s
    Fill Return Data
    Sleep    5s
    Fill Elements Return Data
    Sleep    5s
    Close Browser

CREATE NEW TRANSFER ORDER
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    Sleep    10s
    open Store Mangment Tab
    Navigate To Transfer Tab
    Add New Transfer BTN
    Fill Transfer Data
    Fill Elements Transfer Data
    Close Browser


COMPLETE THE EXCHANGE
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    storemangerrr    ${Loginpassword}
    Sleep    10S
    Navigate To Store Tab From StoreKeeper
    View MyStore BTN
    Fill Outgoing Data
    Close Browser





