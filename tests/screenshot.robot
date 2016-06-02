*** Settings ***

Library  Selenium2Library

Test Setup  Open test browser
Test Teardown  Close test browser

*** Variables ***

*** Test Cases ***

Screenshot Test
    Go to  http://www.ruckuswireless.com/
    Page should contain  ruckus
    Page should contain  wireless
    Page should contain  94089
    Take Screenshot

*** Keywords ***

Open test browser
    Open browser  http://www.msn.com/

Close test browser
    Close all browsers
