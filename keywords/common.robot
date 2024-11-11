***Settings****
Resource            ../Keywords/import.robot

*** Keywords ***
Open traning website
    [Arguments]         ${url}
    SeleniumLibrary.Open Browser        ${url}      chrome
    SeleniumLibrary.Maximize browser window

Input text to element when ready
    [Arguments]     ${locator}     ${text}      ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait until element is visible       ${locator}          ${timeout}
    SeleniumLibrary.Wait until element is enabled       ${locator}          ${timeout}
    SeleniumLibrary.Input text      ${locator}         ${text}

Click element when ready
    [Arguments]    ${locator}    ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait until element is visible       ${locator}      ${timeout}
    SeleniumLibrary.Click element                       ${locator}

Click element when ready with retry
    [Arguments]    ${locator}    ${timeout}=${GLOBAL_TIMEOUT}    ${retry}=2x    ${retry_interval}=5s
    BuiltIn.Wait until keyword succeeds    ${retry}    ${retry_interval}    common.Click element when ready    ${locator}    ${timeout}