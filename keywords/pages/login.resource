*** Keywords ***
Open Browser and Maximize 
    [Arguments]     ${URL}    ${BROWSER}
    Open BROWSER    ${URL}    ${BROWSER}    executable_path=${driver_path}    options=add_argument("--disable-notifications")
    Maximize Browser Window  

Input Username and Password
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text     ${INPUT_USERNAME}    ${USERNAME}
    Input Text     ${INPUT_PASSWORD}    ${PASSWORD}

Click Button Login
    Click Element    ${BTN_LOGIN}