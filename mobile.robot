***Settings***
Library         AppiumLibrary
Variables       apiDemosLocator.yaml
Test Setup      Start Session
Test Teardown   CLose Application

***Variables***

***Keywords***
Start Session
    #Set Appium Timeout      10
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=emulator-5554
    ...                     appPackage=io.appium.android.apis
    ...                     appActivity=io.appium.android.apis.ApiDemos
    ...                     autoGrantPermissions=true
    ...                     noReset=true
    Sleep                   1

#Start app
    #Wait Until Page contains        API Demos

Tap Accessibility
    Tap             ${accessibility}

Tap Accessibility Node Provider 
    Tap             ${accessibility_node_provider}

Tap Accessibility Node Querying
    Tap             ${accessibility_node_querying}

Tap Accessibility Service
    Tap             ${accessibility_service}
CLose Session
    Capture Page Screenshot
    CLose Application               noReset=true

CLose Application
    Capture Page Screenshot
    Quit Application


***Test Cases***
As a user i want to open API Demos apps
    Page should contain Text        Accessibility
    Tap                             ${accessibility}
    Sleep                           1
    Page should contain Text        Accessibility Node Provider
As a user i want to validate inside the accessibility node provider should showing enable talkback Settings
    Tap Accessibility
    Sleep   1
    Tap Accessibility Node Provider
    Page should contain Text        Enable TalkBack and Explore-by-touch from accessibility settings. Then touch the colored squares
    Capture Page Screenshot

As a user i want to validate inside the accessibility node provider should showing Enable QueryBack
    Tap Accessibility
    Sleep   1
    Tap Accessibility Node Querying
    Page should contain Text        Take out Trash

As a user i want to open Accessibility Service
    Tap Accessibility
    Sleep   1
    Tap Accessibility Service
    Page should contain Text        Enable TalkBack