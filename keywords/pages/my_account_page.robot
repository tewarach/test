*** Keywords ***
Click logout button
    common.Click element when ready with retry      ${my_account.logout.button}

Click preparing tab
    common.Click element when ready with retry      ${my_account.preparing.text.button}

Verify order already created
    [Arguments]     ${order_id}
    ${order_created}        String.Replace string       ${my_account.order_id.text}     {order_id}      ${order_id}
    SeleniumLibrary.Wait until element is visible       ${order_created}