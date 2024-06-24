*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${USER_NAME}            id:userName
${ACC_ROLE}             id:roleId
${ACC_SALARY}           id:Salary
${NAME}                 id:Name
${PHONE_NUMBER}         id:phone
${SOCIAL_STATUS}        id:SocialStatus
${QUALIFICATION}        id:Qualification
${QUALIFICATION_LOCATOR}    xpath://*[@id="kt_wrapper"]/div[2]/ng-component/div[1]/div[1]/form/div[2]/div[4]/div/select
${SAVE_BTN}             id=save
${GIVE_TEMP_PASS_BTN}   xpath=/html/body/app-root/ng-component/div/default-layout/div[2]/div/div[2]/div[2]/ng-component/app-dynamic-grid/div/div/div/div/div/div[3]/div/p-table/div/div/table/tbody/tr[1]/td[7]/div[4]/button
${NEW_PASSWORD_FIELD}   name=Password
${SUBMIT_NEW_PASSWORD_BTN}   xpath=/html/body/app-root/ng-component/div/div/ng-component/div/form/div[5]/button

*** Keywords ***
Fill New Account Form
    [Arguments]    ${NEW_USERNAME}    ${role}    ${salary}    ${Nname}    ${phone}    ${status}    ${qualification}
    Sleep    5s
    Input Text    ${USER_NAME}             ${NEW_USERNAME}
    Select From List By Index    ${ACC_ROLE}  ${role}
    Input Text    ${ACC_SALARY}           ${salary}
    Input Text    ${NAME}                  ${Nname}
    Input Text    ${PHONE_NUMBER}          ${phone}
    Select From List By Index    ${SOCIAL_STATUS}  ${status}
    Select From List By Index    ${QUALIFICATION_LOCATOR}  ${qualification}
    Click Button    ${SAVE_BTN}

Give Temporary Password
    Sleep    5s
    Scroll Element Into View    ${GIVE_TEMP_PASS_BTN}
    Click Button    ${GIVE_TEMP_PASS_BTN}

Enter New Password
    [Arguments]    ${password}
    Input Text    ${NEW_PASSWORD_FIELD}    ${password}
    Click Button    ${SUBMIT_NEW_PASSWORD_BTN}