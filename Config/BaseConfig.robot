*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${ENV} =    local
&{BASE_URLS} =   dev=https://dev.kindeeds.com    local=http://localhost:8000
${BASE_URL} =   ${BASE_URLS.${ENV}}
${BROWSER} =    chrome
${BROWSER2} =    firefox

#### Website URLS #########
${LoginUrl} =   ${BASE_URL}/login
${JoinNowUrl} =     ${BASE_URL}/register
${LearnMoreUrl} =   ${BASE_URL}/learnmore
${DashboardUrl} =   ${BASE_URL}/dashboard

${MyGivesUrl} =     ${BASE_URL}/my-gives
${MyGivesAllTabUrl} =    ${MyGivesUrl}/0
${MyGivesAwaitingRequestsTabUrl} =    ${MyGivesUrl}/1
${MyGivesPendingRequestsTabUrl} =    ${MyGivesUrl}/2
${MyGivesAcceptedRequestsTabUrl} =    ${MyGivesUrl}/3
${MyGivesCompletedRequestsTabUrl} =    ${MyGivesUrl}/4
${MyGivesPendingGivesTabUrl} =    ${MyGivesUrl}/5

${MyGetsUrl} =    ${BASE_URL}/my-gets
${MyGetsAllTabUrl} =    ${MyGetsUrl}/0
${MyGetsAwaitingResponseTabUrl} =    ${MyGetsUrl}/1
${MyGetsAcceptedRequestsTabUrl} =    ${MyGetsUrl}/2
${MyGetsCompletedGetsTabUrl} =    ${MyGetsUrl}/3
