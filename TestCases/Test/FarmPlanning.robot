*** Settings ***
Library     SeleniumLibrary


Suite Setup    Set Selenium Timeout    10 seconds

Resource    ../../POM/LoginPage.robot
Resource    ../../POM/FarmPlanning/SectorPage.robot

*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234


*** Test Cases ***
Create New Sector
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    Sleep    3s
    Navigate To Sectors Page
    Click Create New Sectors Button
    Fill New Sector Form