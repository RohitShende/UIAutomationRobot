*** Settings ***
Documentation    Importing selenium Library
Library     SeleniumLibrary

*** Variables ***
${URL} =    https://google.com
${BROWSER} =    chrome
${text_field} =     xpath=//input[@name='q']
${google_search} =  xpath=//input[@name='btnK' and @value='Google Search']

*** Test Cases ***
Sample testcase
    [Documentation]    Google basic test
    [Tags]  regression
    Open Browser  ${URL}  ${BROWSER}
    Capture Page Screenshot
    Input Text    ${text_field}    Green Shirt
    Press Keys    ${text_field}    ESC
    Press Keys    ${text_field}    RETURN
    sleep   2s
    Capture Page Screenshot
    Page Should Contain    Images for
    Page Should Contain    Myntra
    Close All Browsers