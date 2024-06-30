*** Settings ***
Library    SeleniumLibrary
Resource    ../../POM/LoginPage.robot

*** Variables ***
${URL}            http://13.67.167.149:8020/account/login          # Replace with your target URL
${SIDEMENU}       xpath://*[@id="kt_aside_menu"]/ul      # Replace with the actual locator of your side menu


*** Test Cases ***
Scroll Side Menu To Bottom
    [Setup]    Open Browser    ${URL}    Chrome
    Sleep    15s
    LoginASManger
    Execute JavaScript    document.body.style.zoom='75%'    # Adjust the zoom level as needed
    Sleep  20s
   # Sleep    15s
    #Mouse Over    xpath://*[@id="kt_aside_menu"]/ul/li[11]/div/ul/li[5]/a
    Scroll Page To Bottom
    #Wait Until Element Is Visible    ${SIDEMENU}
    Log    88
    #Scroll Element To Bottom    ${SIDEMENU}
    #[Teardown]    Close Browser

*** Keywords ***
Scroll Page To Bottom
    Execute Javascript    window.scrollTo(0, document.${SIDEMENU}.scrollHeight);


Scroll Element To Bottom
    [Arguments]    ${locator}
    Execute Javascript    var element = document.querySelector('${locator}'); element.scrollTop = element.scrollHeight;