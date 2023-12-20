# testcases/RegisterTestcases.robot

*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/RegisterKeywords.robot
Resource         ../keywords/HomePageKeywords.robot
Variables        ../resourcces/config/config.yaml
Variables        ../resourcces/testdata/testdata.yaml
Suite Setup       Open Browser        ${baseURL}        chrome
Suite Teardown    Close Browser


*** Test Cases ***
As a user, I want to register successfully with future skill
    When register user to future skill    ${email}     ${firstname}    ${lastname}    ${phoneNumber}    ${password}
    Then user register to future skill platfrom with ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์
    Capture Page Screenshot