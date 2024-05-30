*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://google.com/
${expected_result}     Podcasts ไทย

*** Keywords ***
เปิดเว็บ
    Open Browser     ${url}     ${browser}
ค้นหาตาม keywords
    Input Text    name=q    ${expected_result}
    Submit Form  
รอผลลัพธ์
    Wait Until Page Contains    ${expected_result}

*** Test Cases ***
Search
   เปิดเว็บ
   ค้นหาตาม keywords
   รอผลลัพธ์