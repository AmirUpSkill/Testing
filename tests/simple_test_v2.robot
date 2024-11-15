*** Settings ***
Documentation     Testing integration with a Python library.
Library           custom_library.py

*** Test Cases ***
Verify Library Integration
    ${message} =    Hello World
    Log    ${message}