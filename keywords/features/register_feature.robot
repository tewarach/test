*** Keywords ***
Register new user
    [Arguments]     ${email}     ${password}    ${confirm_password}
    homepage_page.Click user icon
    login_page.Click sign up button
    register_page.Input email                   ${email}
    register_page.Input password                ${password}
    register_page.Input confirm password        ${confirm_password}
    register_page.Click sign up button
    register_page.Verify register success
    register_page.Click ok button in popup