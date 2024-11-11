*** Keywords ***
Input email
    [Arguments]     ${email}
    common.Input text to element when ready     ${register.email.text}      ${email}

Input password
    [Arguments]     ${password}
    common.Input text to element when ready     ${register.password.text}      ${password}

Input confirm password
    [Arguments]     ${confirm_password}
    common.Input text to element when ready     ${register.confirm_password.text}      ${confirm_password}

Click sign up button
    common.Click element when ready with retry  ${register.signup.button}

Click ok button in popup
    common.Click element when ready with retry  ${register.ok.button}

Verify register success
    SeleniumLibrary.Wait until element is visible       ${register.register_success.text}