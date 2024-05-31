*** Variables ***
# Input
${INPUT_USERNAME}    //input[@id="username"]
${INPUT_PASSWORD}    //input[@id="password"]

# Button
${BTN_LOGIN}    //button[@type="submit"]/i[@class and text()=" Login"]

# ALERT
${ALERT_ERROR_MESSAGE}    //div[@id="flash" and @class="flash error"]