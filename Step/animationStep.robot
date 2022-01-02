*** Settings ***
Resource        ../Resources/animationPage.robot
Variables       ../Resources/Animation.yaml
Test Setup      Start Session
Test Teardown   CLose Application

***Test Cases***
As a user i want to open API Demos apps menu Animation
    Page should contain Text        Animation
    Tap                             ${animation}
    Sleep                           1
    Page should contain Text        Bouncing Balls