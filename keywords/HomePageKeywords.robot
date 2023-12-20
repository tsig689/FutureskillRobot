#keywords/HomePageKeywords.robot
*** Settings ***
Library            SeleniumLibrary
Resource           CommonKeywords.robot

*** Keywords ***
user register to future skill platfrom with 
    [Arguments]    ${expected_message}
    Wait until Page contains element then verify text    ${expected_message}