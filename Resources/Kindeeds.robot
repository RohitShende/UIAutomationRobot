*** Settings ***
Library     SeleniumLibrary
Resource    ./KindeedsPageObjects/HomePage.robot
Resource    ./KindeedsPageObjects/SignInPage.robot

*** Keywords ***
Load Home Page
    Open Homepage
    Accept Cookies

Load Home Page And Verify
    Navigate to Homepage
    Verify Header
    Click On Sign In and Verify Url
    Go Back
    Click On Join Now and Verify Url
    Go Back
    Click On Learn More and Verify

Log In
    [Arguments]    ${email}    ${password}
    Go To   ${LoginUrl}
    Sign In    ${email}    ${password}

Logged In User
    [Arguments]    ${email}    ${password}
    Log In    ${email}    ${password}
    Verify Sign In Successful

