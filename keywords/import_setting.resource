*** Settings ***
Library        SeleniumLibrary
Library        BuiltIn

# Import Config File
Variables      ${CURDIR}${/}..${/}resources${/}config${/}config.yaml

# Import locator File
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}login.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}main.resource
Resource       ${CURDIR}${/}..${/}locators${/}pages${/}common.resource

# Import Keywords File
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}login.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}main.resource
Resource       ${CURDIR}${/}..${/}keywords${/}pages${/}common.resource