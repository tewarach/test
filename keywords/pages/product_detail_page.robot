*** Keywords ***
Click add to cart button
    common.Click element when ready with retry          ${product_detail.add_to_cart.button}

Click ok button in popup
    common.Click element when ready with retry          ${product_detail.ok.button}

Verify add to cart success
    SeleniumLibrary.Wait until element is visible       ${product_detail.add_success.text}