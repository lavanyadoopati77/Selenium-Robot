*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html
*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds

    #select radio button
    select radio button  sex    Female
    select radio button  exp    5

    #select checkbox
    select checkbox     Automation Tester
    select checkbox     Manual Tester


    select checkbox     Selenium Webdriver
    unselect checkbox   Manual Tester


*** Keywords ***
