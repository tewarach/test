*** Keywords ***
Get value from email field
    [Arguments]     ${email}
    FOR     ${i}     IN RANGE    10
        sleep   1s
        ${get_email}     cart_page.Get value email
        Exit For Loop IF  "${get_email}" == "${email}"
    END

Input delivery info and click pay button
    [Arguments]     ${email}  ${name}  ${surname}  ${address}  ${phone_no}
    Get value from email field                      ${email}
    cart_page.Input name in delivery info           ${name}
    cart_page.Input surnamename in delivery info    ${surname}
    cart_page.Input address in delivery info        ${address}
    cart_page.Input phone number in delivery info   ${phone_no}
    cart_page.Click pay button