*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Test Cases ***
LoginTc
    open browser  https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text  id:txtUsername      Admin
    input text  id:txtPassword      admin123

    #capture element screenshot  xpath://*[@id="divLogo"]/img    C:/Users/doopati/PycharmProjects/automation/Logo.png
    #capture page screenshot     C:/Users/doopati/PycharmProjects/automation/LoginTC.png

    capture element screenshot  xpath://*[@id="divLogo"]/img        LOGO.png
    capture page screenshot     LOGIN.png

*** Keywords ***
