*** Settings ***
Library     SeleniumLibrary

Resource    ../../POM/Stores/StoreMangment.robot
Resource    ../../POM/Stores/TransferOrder.robot
Resource    ../../POM/Stores/ReturnRequest.robot
Resource    ../../POM/Stores/StoreSection.robot
Resource    ../../POM/Stores/InventoryProcess.robot
Resource    ../../POM/Stores/StoreKeeper.robot
Resource    ../../POM/Purchase/PurchaseRequest.robot
Resource    ../../POM/Purchase/PurchaseOrder.robot
Resource    ../../POM/Purchase/Invoices.robot
Resource    ../../POM/Purchase/SuppliersAccounts.robot
Resource    ../../POM/../POM/LoginPage.robot

Suite Setup    Set Selenium Timeout    20 seconds


*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234


*** Test Cases ***
#farm manger   done
Create Purchase Request
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaFM    HebaFM@#23
    Navigate To Purchase Tab
    Navigate To Purchase Request Tab
    Click On Add new Purchase Order
    Fill Order Request Details
    Add Purchase Request
    #Capture Page Screenshot
    Close All Browsers
#po     done
Purchase Officer Recivie the Request Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Navigate To Purchase Tab From PO
    Navigate To Purchase Request Tab From PO
    Click On View Request Order Details
    Click On Reciveing Request Btn
#Purchase Officer Add New Prices Offers
    Add New Prices Offers
    Send Prices Offer
#Purchase Officer Add New Buying Suggestion
    Add New Buying Suggestion
    Close All Browsers


Manger Aprrove The Buying Suggestion
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaFM    HebaFM@#23
    Navigate To Purchase Tab
    Navigate To Purchase Request Tab
    Click On View Request Order Details
    Navigate To Buying Suggestion Tab
    View Buying Suggestion
    Manger Accept Buying Suggestion
    Close All Browsers


#Purchase Officer View Purchase Order
 #   Open Browser    ${URL}    ${BROWSER}
  #  Maximize Browser Window
  #  Login    HebaPO    HebaPO@#23
  #  Sleep    10s
   # Navigate To Purchase Tab From PO
    #Navigate To Purchase Order Tab From PO
    #View Purchase Order
    #View Purchase Order Details
    #Close Browser
Purchase Officer Recieve Purchase Order
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Navigate To Purchase Tab From PO
    Navigate To Purchase Order Tab From PO
    View Purchase Order
    View Purchase Order Details
    Purchase Officer Recieve the Purchase Order
    #Close Browser
#Purchase Officer Add New Buying Invoice
    Purchase Officer Add New Buying Invoice
    Purchase Officer Edit New Buying Invoice
    Close All Browsers

################## invoices
Purchase Officer View Invoice
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Navigate To Purchase Tab From PO
    Sleep    5s
    Navigate To Invoices Tab From PO
    Page Should Contain    فواتير الشراء
    Close All Browsers



Purchase Officer View Suppliers Accounts
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Navigate To Purchase Tab From PO
    Sleep    5s
    Navigate To Suppliers Tab From PO
    Page Should Contain    حسابات الموردين
    Close All Browsers


Purchase Officer Add New Supplier Account
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    HebaPO    HebaPO@#23
    Navigate To Purchase Tab From PO
    Sleep    5s
    Navigate To Suppliers Tab From PO
    PO View Supplier Deatils
    PO Add New Payment Recieve
    Close All Browsers












#Manger View Purchase Order
 #   Open Browser    ${URL}    ${BROWSER}
  #  Maximize Browser Window
   ## Login    HebaFM    HebaFM@#23
   # Navigate To Purchase Tab
   # Navigate To Purchase Order Tab
   # View Purchase Order
   # View Purchase Order Details








