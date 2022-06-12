*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}      http://demo.automationtesting.in/Windows.html
*** Test Cases ***
TabbedWindowsTest
    open browser  ${url}    ${browser}
    click element   xpath://*[@id="Tabbed"]/a/button
    switch window  title=Selenium
    click element  xpath://*[@id="main_navbar"]/ul/li[7]/a/span

    sleep  3
    close all browsers

*** Keywords ***
