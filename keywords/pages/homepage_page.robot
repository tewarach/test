*** Keywords ***
Click user icon
    common.Click element when ready with retry      ${homepage.user_icon.button}

Input search
    [Arguments]     ${search_value}
    common.Input text to element when ready         ${homepage.search.text}         ${search_value}

Click search button
    common.Click element when ready with retry      ${homepage.search.button}
    
Select product
    [Arguments]     ${product}
    ${locator.product}=  String.Replace string      ${homepage.product.button}      {product}       ${product}
    common.Click element when ready with retry      ${locator.product}

Click cart icon
    common.Click element when ready with retry      ${homepage.cart_icon.button}