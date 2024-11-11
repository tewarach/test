*** Keywords ***
Login with username
    [Arguments]     ${username}     ${password}
    homepage_page.Click user icon
    login_page.Input username  ${username}
    login_page.Input password  ${password}
    login_page.Click login button
    login_page.Verify login success
    login_page.Click ok button in popup