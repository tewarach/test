*** Keywords ***
Input card number
    [Arguments]     ${card_number}
    common.Input text to element when ready         ${payment_detail.card_number.text}      ${card_number}

Input expire date
    [Arguments]     ${exp_date}
    common.Input text to element when ready         ${payment_detail.exp_date.text}      ${exp_date}

Input cvc code
    [Arguments]     ${cvc_code}
    common.Input text to element when ready         ${payment_detail.cvc_code.text}      ${cvc_code}

Input card owner
    [Arguments]     ${card_owner}
    common.Input text to element when ready         ${payment_detail.card_owner.text}      ${card_owner}

Click comfirm payment button
    common.Click element when ready with retry      ${payment_detail.confirm_payment.text}

Verify payment success
    SeleniumLibrary.Wait until element is visible   ${payment_detail.payment_success.text}

Click ok button in popup
    common.Click element when ready with retry      ${payment_detail.ok.button}