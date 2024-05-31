*** Keywords ***
Verify Message
    [Arguments]     ${LOCATOR}    ${VERIFY_MESSAGE}
    ${MESSAGE}     Get Text    ${LOCATOR}
    ${MESSAGE}     Evaluate    "${MESSAGE.splitlines()[0].strip()}"
    Should Be Equal   ${MESSAGE}    ${VERIFY_MESSAGE}
