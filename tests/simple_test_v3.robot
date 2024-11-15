*** Settings ***
Documentation     Verifying system command execution.
Library           OperatingSystem
Library           Process

*** Test Cases ***
Verify System Command
    ${result} =    Run Process    cmd    /c    echo Hello from system!
    Log    ${result.stdout}
    