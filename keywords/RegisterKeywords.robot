# keywords/RegisterKeywords.robot
*** Settings ***
Library            SeleniumLibrary
Resource           CommonKeywords.robot

*** Keywords ***
register user to future skill
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${phoneNumber}    ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//button[contains(text(),'สมัครสมาชิก')]
    CommonKeywords.Wait until element is ready then input text        name=email                   ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName               ${firstname}
    CommonKeywords.Wait until element is ready then input text        name=lastName                ${lastname}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber             ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword             ${password}
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword         ${password}
    CommonKeywords.Wait until element is ready then click element    xpath=//input[@type='checkbox' and @name='consent']
    CommonKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]



user register to future skill platfrom with ${expected_message}
    CommonKeywords.Wait until Page contains element then verify text     ${expected_message}