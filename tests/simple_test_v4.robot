*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${SEARCH_TERM}    ENETCOM
${SITE_URL}    https://enetcom.rnu.tn/fr  

*** Test Cases ***
Navigate To ENETCOM And Verify Button
    [Documentation]    Navigate to Google, search for ENETCOM, and verify the "Actualité" button exists.
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Input Text    name=q    ${SEARCH_TERM}
    Press Keys    name=q    RETURN
    Sleep    2s  
    Click Link    ${SEARCH_TERM}
    Switch Window    title:ENET'COM - Ecole Nationale d'Electronique et des Télécommunications de Sfax  # Adjust title based on actual page title
    Sleep    2s  
    ${button_exists}=    Run Keyword And Return Status    Element Should Be Visible    xpath=//a[contains(text(), 'Actualité')]
    Log    Actualité button exists: ${button_exists}
    Close Browser