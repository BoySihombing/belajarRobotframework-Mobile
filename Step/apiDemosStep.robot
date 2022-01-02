*** Settings ***
Resource        ../Resources/apiDemosPage.robot
Variables       ../Resources/locator.yaml
Test Setup      Start Session
Test Teardown   CLose Application

***Test Cases***
As a user i want to open API Demos apps
    Page should contain Text        Accessibility
    Tap                             ${accessibility}
    Sleep                           1
    Page should contain Text        Accessibility Node Provider