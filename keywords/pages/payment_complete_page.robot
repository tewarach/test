*** Keywords ***
Click continue shopping
    common.Click element when ready with retry      ${payment_complete.continue_shopping.text.button}

Get order id
    ${order_text}  Get Text    ${payment_complete.order_id.text}
    # ${order_id}    BuiltIn.Evaluate    '${order_text}'.split('ORDER ID: ')[-1].split()[0]
    @{order_parts}=    Split String    ${order_text}    ${SPACE}
    ${order_id_with_text}=    Set Variable    ${order_parts[2]}
    ${order_id}=    Strip String    ${order_id_with_text}
    Log    ${order_id}
    RETURN    ${order_id}