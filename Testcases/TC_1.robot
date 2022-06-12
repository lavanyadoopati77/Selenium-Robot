*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    #create webdriver    Chrome  executable_path="C:\\Users\\doopati\\Desktop\\chromedriver.exe"
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    pavantraining@gmail.com
    input text  id:Password     Test@123
    click element  xpath://button[normalize-space()='Log in']

