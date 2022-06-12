*** Settings ***
Library  SeleniumLibrary

*** Variables ***
*** Test Cases ***
MouseActions
        open browser  https://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
        maximize browser window

        #rightclick/open context menu
        open context menu  xpath:/html/body/div/section/div/div/div/p/span
        sleep  3

        #doubleclick
        go to       https://testautomationpractice.blogspot.com/
        maximize browser window

        double click element  xpath://*[@id="HTML10"]/div[1]/button
        sleep  3

        #drag and drop
        go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
        maximize browser window

        drag and drop  id:box6      id:box106
        sleep  3






*** Keywords ***
