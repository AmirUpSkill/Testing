*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FORM_URL}    file:///C:/Users/PCS/Desktop/Github/Testing/tests/index.html  # Local file path
# Alternative if using live server:
# ${FORM_URL}    http://127.0.0.1:5500/tests/index.html

*** Test Cases ***
Form Submission and Validation
    Open Browser    ${FORM_URL}    chrome
    Maximize Browser Window
    Input Text    id=name    John Doe
    Input Text    id=email    john.doe@example.com
    Input Text    id=message    This is a test message.
    Click Button    id=submit
    Wait Until Page Contains    Your message has been sent successfully!
    Close Browser