*** Settings ***
Library     SeleniumLibrary
Resource    ../../Config/BaseConfig.robot
Resource    ../../Utilities/Common.robot
Variables   ../WebElements.py


*** Keywords ***
Open Homepage
    Open Browser   ${BASE_URL}  ${BROWSER}


Navigate to Homepage
    Go To    ${BASE_URL}

Verify Header
     Wait Until Page Contains Element   ${HomePageHeaderElement}
     Wait Until Page Contains Element   ${HomePageSignInButton}
     Page Should Contain Element   ${HomePageHeaderElement}
     Page Should Contain Element   ${HomePageSignInButton}

Accept Cookies
    Wait Until Page Contains Element   ${HomePageAcceptCookiesButton}
    Click Button    ${HomePageAcceptCookiesButton}

Click On Sign In and Verify Url
    Wait Until Page Contains Element    ${HomePageSignInButton}
    Click Element    ${HomePageSignInButton}
    Verify Current Url Is Equal To    ${LoginUrl}


Click On Join Now and Verify Url
    Wait Until Page Contains Element    ${HomePageJoinNowElement}    timeout=10
    Click Element   ${HomePageJoinNowElement}
    Verify Current Url Is Equal To    ${JoinNowUrl}


Click On Learn More and Verify
    Wait Until Page Contains Element    ${HomePageLearnMoreLink}
    Click Element    ${HomePageLearnMoreLink}
    Verify Current Url Is Equal To    ${LearnMoreUrl}
    Page Should Contain Element    ${LearnMoreHowToGiveSpanElement}
    Page Should Contain Element    ${LearnMoreHowToGetSpanElement}
    Page Should Contain    Choose your category
    Page Should Contain    Simplified Giving. Search. Upload.
    Page Should Contain    Accept a Request. Specify where and when to meet
    Click Element    ${LearnMoreHowToGetSpanElement}
    sleep   1s
    Page Should Contain    Browse the items, make a request
    Page Should Contain    Wait for approval from giver
    Page Should Contain    Pay it forward by giving at least once or spreading the word.