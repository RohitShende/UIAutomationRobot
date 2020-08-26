*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/Kindeeds.robot
Resource    ../../../Utilities/Common.robot

Suite Setup     Start Suite
Suite Teardown  End Suite


*** Test Cases ***
Verify Home Page Functionalities
    [Documentation]  Check the homepage has loads fine and the links/buttons are working correctly
    [Tags]  regression    give-get
    Load Home Page And Verify
    sleep    1s
