*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
launchBrowser                               #userdefined without argument
    [Arguments]     ${appurl}       ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]  ${title}

