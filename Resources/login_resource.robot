*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}      chrome
*** Keywords ***
open my Browser
    open browser  ${LOGIN URL}      ${BROWSER}
    maximize browser window

close Browsers
    close all browsers

open Login Page
    go to   ${LOGIN URL}

Input Username
    [Arguments]  ${username}
    input text  id:Email    ${username}

input password
    [Arguments]  ${password}
    input text  id:Password     ${password}

click login
    click element  xpath://button[@type='submit']

click logout link
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard


