*** Keywords ***
Select credit card
    common.Click element when ready with retry          ${payment_method.credit_card.button}

Click next button
    common.Click element when ready with retry          ${payment_method.next.button}