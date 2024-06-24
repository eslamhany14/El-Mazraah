*** Settings ***
Library     SeleniumLibrary
Resource    ../LoginPage.robot
Library    Collections


*** Variables ***
${INVOICES_TAB}     xpath://*[@id="kt_aside_menu"]/ul/li[4]/div/ul/li[3]/a



${ENVIRONMENT}  qa
${BROWSER}      chrome
&{URL}          dev=http://13.67.167.149:8020/account/login     qa=https://www.udemy.com/course/robot-framework-2/learn/lecture/6070738#overview



*** Keywords ***
Navigate To Invoices Tab From PO
    Sleep    3s
    Click Link    ${INVOICES_TAB}
    Wait Until Page Contains       فواتير الشراء



