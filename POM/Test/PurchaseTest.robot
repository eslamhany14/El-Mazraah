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
Resource    ../Purchase/PurchaseRequest.robot
Resource    ../Purchase/PurchaseOrder.robot
Resource    ../Purchase/Invoices.robot
Resource    ../Purchase/SuppliersAccounts.robot

Suite Setup    Set Selenium Timeout    20 seconds


*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234


*** Test Cases ***
Create Purchase Request
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaFM    HebaFM@#23
    Sleep    10s
    Navigate To Purchase Tab
    Navigate To Purchase Request Tab
    Click On Add new Purchase Order
    Fill Order Request Details
    Add Purchase Request
    Close Browser

Purchase Officer Recivie the Request Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Navigate To Purchase Request Tab From PO
    Click On View Request Order Details
    Click On Reciveing Request Btn
    Close Browser

Purchase Officer Add New Prices Offers
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Navigate To Purchase Request Tab From PO
    Click On View Request Order Details
    Sleep    5s
    Add New Prices Offers
    Send Prices Offer
    Close Browser


Purchase Officer Add New Buying Suggestion
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Navigate To Purchase Request Tab From PO
    Click On View Request Order Details
    Sleep    5s
    Add New Buying Suggestion
    Close Browser




Manger Aprrove The Buying Suggestion
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaFM    HebaFM@#23
    Sleep    10s
    Navigate To Purchase Tab
    Navigate To Purchase Request Tab
    Click On View Request Order Details
    Navigate To Buying Suggestion Tab
    View Buying Suggestion
    Sleep    3s
    Manger Accept Buying Suggestion
    Close Browser


Purchase Officer View Purchase Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Navigate To Purchase Order Tab From PO
    View Purchase Order
    View Purchase Order Details
    Close Browser


Purchase Officer Recieve Purchase Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Navigate To Purchase Order Tab From PO
    View Purchase Order
    View Purchase Order Details
    Sleep    3s
    Purchase Officer Recieve the Purchase Order
    Sleep    3s
    Close Browser



Purchase Officer Add New Buying Invoice
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Sleep    3s
    Navigate To Purchase Order Tab From PO
    Sleep    3s
    View Purchase Order
    View Purchase Order Details
    Purchase Officer Add New Buying Invoice
    Sleep    3s
    Purchase Officer Edit New Buying Invoice
    Close Browser

################## invoices
Purchase Officer View Invoice
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    10s
    Navigate To Purchase Tab From PO
    Sleep    3s
    Navigate To Invoices Tab From PO
    Page Should Contain    فواتير الشراء
    Close Browser



Purchase Officer View Suppliers Accounts
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    5s
    Navigate To Purchase Tab From PO
    Sleep    2s
    Navigate To Suppliers Tab From PO
    Page Should Contain    حسابات الموردين
    Close Browser


Purchase Officer Add New Supplier Account
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Sleep    5s
    Navigate To Purchase Tab From PO
    Sleep    3s
    Navigate To Suppliers Tab From PO
    Sleep    5s
    PO View Supplier Deatils
    PO Add New Payment Recieve
    Close Browser












Manger View Purchase Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaFM    HebaFM@#23
    Sleep    10s
    Navigate To Purchase Tab
    Navigate To Purchase Order Tab
    View Purchase Order
    View Purchase Order Details








