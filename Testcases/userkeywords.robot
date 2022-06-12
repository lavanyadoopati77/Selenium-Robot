*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot


*** Variables ***
${url}          https://demo.guru99.com/test/newtours/
${browser}      chrome

*** Test Cases ***
TC1
    ${Pagetitle}=   launchBrowser   ${url}      ${browser}
    log to console   ${Pagetitle}
    log  ${Pagetitle}
    input text  name:userName       mercury
    input text  name:password       mercury



#*** Keywords ***
#launchBrowser                               #userdefined without argument
 #   [Arguments]     ${appurl}       ${appbrowser}
  #  open browser  ${appurl}    ${appbrowser}
   # maximize browser window
    #${title}=   get title
    #[Return]  ${title}




