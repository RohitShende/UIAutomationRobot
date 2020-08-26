*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/Kindeeds.robot
Resource    ../../../Utilities/Common.robot

Suite Setup     Start Suite
Suite Teardown  End Suite

*** Variables ***
${invalid_email} =    invalid@email.com
${invalid_password} =    12345678
${error_message} =    You have entered an invalid email address or password
${valid_email} =    giver@yopmail.com
${valid_password} =    Kindeeds

*** Test Cases ***
Invalid Login
    [Documentation]  Check login with Invalid / Unregistered Email id
    [Tags]  regression    give-get
    Log In  ${invalid_email}    ${invalid_password}
    Verify Error Message In Toast    ${error_message}
    sleep    1s

Valid Login
    [Tags]  regression    give-get
    Logged In User    ${valid_email}    ${valid_password}
    sleep   1s

