*** Keywords ***
Input name in delivery info
    [Arguments]     ${name}
    common.Input text to element when ready     ${cart.name.text}   ${name}

Input surnamename in delivery info
    [Arguments]     ${surname}
    common.Input text to element when ready     ${cart.surname.text}   ${surname}

Input address in delivery info
    [Arguments]     ${address}
    common.Input text to element when ready     ${cart.address.text}   ${address}

Input phone number in delivery info
    [Arguments]     ${phone_no}
    common.Input text to element when ready     ${cart.phone_no.text}   ${phone_no}

Click pay button
    common.Click element when ready with retry  ${cart.pay.button}

Get value email
    ${get_email}        SeleniumLibrary.Get value       ${cart.get_email.text}
    RETURN      ${get_email}