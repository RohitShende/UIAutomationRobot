*** Settings ***
Library     SeleniumLibrary
Resource    ../../Config/BaseConfig.robot
Resource    ../../Utilities/Common.robot
Variables   ../WebElements.py


*** Keywords ***
Sign In
    [Arguments]    ${email}    ${password}
    Verify Current Url Is Equal To    ${LoginUrl}
    Page Should Contain    ${RecaptchaMessage}
    Input Text    ${SignInPageInputEmailTextbox}    ${email}
    Input Text    ${SignInPageInputPasswordTextbox}    ${password}
    Click Element   ${SignInPageSignInSpanElement}
    sleep   3s

Verify Sign In Successful
    Wait Until Page Contains    Great Job! You have successfully given
    Verify Current Url Is Equal To    ${DashboardUrl}
    Page Should Contain    You have not lived today until you have done something for someone who can never repay you.
