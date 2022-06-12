*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Registration Test

    ${speed} =  get selenium speed
    log to console  ${speed}
    open browser    ${url}    ${browser}
    maximize browser window

    set selenium speed  2  #sleep at every statement
    select radio button  Gender     F
    input text  name:FirstName  Lavanya
    input text  name:LastName   Doopati
    input text  id:Email    lavanyadoopati@gmail.com
    input text  id:Password     123456john
    input text  id:ConfirmPassword      123456john

    click button  name:register-button
    ${speed} =  get selenium speed
    log to console  ${speed}


    close browser


*** Keywords ***
