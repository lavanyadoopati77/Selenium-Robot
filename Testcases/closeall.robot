*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    open browser  http://automationpractice.com/index.php       chrome
    maximize browser window

    #close browser       #close second browser only
    close all browsers          #close all

*** Keywords ***
