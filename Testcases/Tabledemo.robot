*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
TableValidation
    open browser  https://testautomationpractice.blogspot.com/      chrome
    maximize browser window

    ${rows}=   get element count  xpath://table[@name='BookTable']//tr
    log to console  ${rows}

    ${columns}=     get element count  xpath://table[@name='BookTable']//th
    log to console  ${columns}

    #get data
    ${data}=    get text  xpath://table[@name='BookTable']//tr[5]/td[2]
    log to console  ${data}

    #different validations
    table column should contain  xpath://table[@name='BookTable']  2    Author
    table row should contain     xpath://table[@name='BookTable']   4   Learn JS


    table cell should contain  xpath://table[@name='BookTable']     5   2   Mukesh
    table header should contain  xpath://table[@name='BookTable']   BookName

    close browser





*** Keywords ***
