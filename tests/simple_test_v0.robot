*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://example.com

*** Test Cases ***
Open Example Website
    [Documentation]    This test case opens the example website.
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Close Browser