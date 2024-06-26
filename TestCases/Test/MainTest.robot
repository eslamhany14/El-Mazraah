*** Settings ***
Library     SeleniumLibrary
Resource    LoginPage.robot
Resource    Users/UsersPage.robot
Resource    Users/NewAccountPage.robot
Resource    Sectors/SectorPage.robot
Resource    Sectors/NewSectorsPage.robot
Resource    ../LoginPage.robot
Resource    ../../POM/LoginPage.robot


Suite Setup    Set Selenium Timeout    10 seconds


*** Variables ***
${BROWSER}      chrome
${URL}          http://13.67.167.149:8020/account/login
${Loginusername}     mangerrr       #emohamed@arabdt.com
${Loginpassword}     Test@1234

${NEW_USERNAME}     eslammmmmm
${role}     2
${salary}       1000
${Nname}     essoooo
${phone}        01100785640
${status}       1
${qualification}        1

&{EMP_DATA}      username=eslam    role=2      salaryy=5    nnamee=esso     phonee=014785469874     statuss=1       qua=1


*** Test Cases ***
LOGIN TC
   [Setup]    Open Browser    ${URL}    ${BROWSER}
    #Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login   ${Loginusername}    ${Loginpassword}
    Close Browser

#CREATE NEW EMP TC
 #   Navigate To Users Page
  #  Click Create New Account Button
    # TODO NO ACTION
    #Fill New Account Form    ${NEW_USERNAME}    ${role}    ${salary}    ${Nname}    ${phone}    ${status}    ${qualification}






    #LogOut
    Close Browser

    #Click Create New Account Button
    # TODO NO ACTION
    #Fill New Account Form    ${NEW_USERNAME}    ${role}    ${salary}    ${Nname}    ${phone}    ${status}    ${qualification}

    ## dictionaryyy 
    #Fill New Account Form   &{EMP_DATA}



Test Case2
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    ${Loginusername}    ${Loginpassword}
    Sleep    5s

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login    labormanger    Test@1234
    Sleep    3s

    Switch Browser    index_or_alias
    Sleep    3s
    Log    222
    Close Browser