*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
# my 2nd change test git
Load
    Go To  $[START_URL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com
