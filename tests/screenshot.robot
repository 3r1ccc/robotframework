*** Settings ***

Library  Selenium2Library

Test Setup  Open test browser
Test Teardown  Close test browser

*** Variables ***

*** Test Cases ***

Screenshot Test
    Input Text  id=lst-ib  ruckus wireless
    Press Key  id=lst-ib  \\13
    Wait Until Element Is Visible  xpath=//a[contains(.,'ruckuswireless')]
    Click link  xpath=//a[contains(.,'Ruckus Wireless')]
    Page should contain  ruckus
    Page should contain  wireless
    Page should contain  94089
    Capture Page Screenshot

*** Keywords ***

Open test browser
    Open browser  http://www.google.com/

Close test browser
    Close all browsers
