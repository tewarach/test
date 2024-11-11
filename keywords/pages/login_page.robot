*** Keywords ***
Click sign up button
    common.Click element when ready with retry      ${login.signup.button}

Input username
    [Arguments]     ${email}
    common.Input text to element when ready         ${login.username.text}      ${email}

Input password
    [Arguments]     ${password}
    common.Input text to element when ready         ${login.password.text}      ${password}

Click login button
    common.Click element when ready with retry      ${login.login.button}

Verify login success
    SeleniumLibrary.Wait until element is visible       ${login.login_success.text}

Click ok button in popup
    common.Click element when ready with retry      ${login.ok.button}