*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Kindeeds.robot


*** Keywords ***
Start Suite
    Load Home Page

End Suite
    Close All Browsers


Verify Current Url is Equal To
    [Arguments]    ${expected_url}
    ${current_url} =   Get Location
    Log     Comparing current url ${current_url} with expected url ${expected_url}
    Should Be Equal     ${current_url}    ${expected_url}

Verify Error Message in Toast
    [Arguments]    ${error_msg}
    Wait Until Page Contains Element    xpath=//div[@class='MuiAlert-message' and contains(., '${error_msg}')]    timeout=10
    Capture Page Screenshot