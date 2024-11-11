*** Keywords ***
Add product to cart
    product_detail_page.Click add to cart button
    product_detail_page.Verify add to cart success
    product_detail_page.Click ok button in popup