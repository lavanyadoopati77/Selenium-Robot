*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html
*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}    ${browser}
    maximize browser window
    #set selenium speed  2seconds
    select from list by label  continents   Europe
    sleep  3
    select from list by index  continents   4

    #list box
    select from list by label  selenium_commands    Navigation Commands
    select from list by label  selenium_commands    Wait Commands
    select from list by label  selenium_commands    Browser Commands


    unselect from list by label  selenium_commands    Browser Commands




*** Keywords ***
