***Settings***
Library         AppiumLibrary
Variables       ../Resources/locator.yaml

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

# Tap Accessibility Node Querying
#     Tap             ${accessibility_node_querying}

# Tap Accessibility Service
#     Tap             ${accessibility_service}
CLose Session
    Capture Page Screenshot
    CLose Application               noReset=true

CLose Application
    Capture Page Screenshot
    Quit Application