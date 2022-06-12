*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Test Cases ***
ScrollingTest
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    maximize browser window

    #execute javascript  window.scrollTo(0,2500)
    #scroll element into view  xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[48]/td[2]


    execute javascript  window.scrollTo(0,document.body.scrollHeight)          #end of the page
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)      #startpoint


*** Keywords ***
