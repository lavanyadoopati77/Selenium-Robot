*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
Registration Test

    open browser    ${url}    ${browser}
    maximize browser window

    ${implicittime} =  get selenium implicit wait
    log to console  ${implicittime}

    set selenium implicit wait  10

    ${implicittime} =  get selenium implicit wait
    log to console  ${implicittime}

    select radio button  Gender     F
    input text  name:FirstName1  Lavanya
    input text  name:LastName   Doopati
    input text  id:Email    lavanyadoopati@gmail.com
    input text  id:Password     123456john
    input text  id:ConfirmPassword      123456john


    close browser


*** Keywords ***
