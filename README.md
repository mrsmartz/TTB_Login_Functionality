# Login functionality with Robot Framework
## Overview
This project automates the login functionality of the website 'The Internet'. The following test cases are covered:
Login success
Login failed - Password incorrect
Login failed - Username not found

## Project Structure
```
├── README.md
├── keywords
│   ├── pages
│   │   ├── common.resource
│   │   ├── login.resource
│   │   └── main.resource
├── locators
│   └── pages
│       ├── login.resource
│       ├── common.resource
│       └── main.resource
├── resources
│   ├── config
│   │   └── config.yaml
│   ├── driver
│       └── chromedriver.exe
├── testscript
│   └── web
│       └── ex2.robot
```
## Prerequisites
Ensure you have the following installed on your system:
- Python 3.x
- pip robotframework-seleniumlibrary
- Google Chrome browser and ChromeDriver

## Test Execution
- robot .\testscript\web\ex2.robot