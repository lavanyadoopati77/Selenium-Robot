*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Getlinks
    open browser    https://demo.guru99.com/test/newtours/      chrome
    maximize browser window

    ${alllinkscount}=  get element count  xpath://a
    log to console  ${alllinkscount}

    @{LinkItems}    create list
    FOR     ${i}    IN RANGE    1   ${alllinkscount}+1
    ${LINKTEXT}=    get text  xpath:(//a)[${i}]
    LOG TO CONSOLE  ${LINKTEXT}
    END

*** Keywords ***
