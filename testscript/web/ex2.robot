*** Settings ***
Resource    ${CURDIR}${/}..${/}..${/}keywords${/}import_setting.resource
Suite Setup       Open Browser and Maximize    ${URL}    ${BROWSER}
Suite Teardown    Close BROWSER

*** Variables ***
${driver_path}       ${CURDIR}${/}..${/}..${/}resources${/}driver${/}${CHROME_DRIVER}
${username}    tomsmith
${password}    SuperSecretPassword!
${success_login}     You logged into a secure area!
${success_logout}    You logged out of the secure area!
${error_username}    Your username is invalid!
${error_password}    Your password is invalid!

*** Test Cases ***
Login success
    Input Username and Password    ${username}    ${password}
    Click Button Login
    Verify Message    ${ALERT_SUCCESS_MESSAGE}    ${success_login}
    Click Button Logout
    Verify Message    ${ALERT_SUCCESS_MESSAGE}    ${success_logout}

Login failed - Password incorrect
    Input Username and Password    ${username}    Password!
    Click Button Login
    Verify Message    ${ALERT_ERROR_MESSAGE}    ${error_password}

Login failed - Username not found
    Input Username and Password    tomholland    Password!
    Click Button Login
    Verify Message    ${ALERT_ERROR_MESSAGE}    ${error_username}