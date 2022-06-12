*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Registration Test
    ${time}=     get selenium timeout
    log to console  ${time}

    open browser    ${url}    ${browser}
    maximize browser window
    set selenium timeout  10 seconds
    wait until page contains  Registration

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
