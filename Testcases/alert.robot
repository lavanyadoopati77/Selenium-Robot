*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}          https://testautomationpractice.blogspot.com/
*** Test Cases ***
AlertTesting
    open browser  ${url}    ${browser}
    maximize browser window

    click element  xpath://button[@onclick='myFunction()']
    sleep  3

    #handle alert  accept            #press ok
    #handle alert  dismiss                       #press cancel
    #handle alert  leave                   #open  and leave
    alert should be present  Press a button!
    #alert should not be present  Press a button!


*** Keywords ***
