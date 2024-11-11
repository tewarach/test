*** Settings ***
Resource            ../Keywords/import.robot
Suite Teardown      Close Browser

***Test Cases***
TC_01 Assignment
    [Tags]      TC_01
    common.Open traning website             ${url.UAT}
    # register_feature.Register new user      ${TC_01.email}  ${TC_01.password}  ${TC_01.confirm_password}
    # homepage_page.Click user icon
    # sleep  5
    # account_page.Click logout button
    login_feature.Login with username               ${tc_01.email}  ${tc_01.password}
    sleep    1
    homepage_page.Input search                      ${tc_01.search_value}
    homepage_page.Click search button
    homepage_page.Select product                    ${tc_01.product}
    product_detail_page.Click add to cart button
    product_detail_page.Verify add to cart success
    product_detail_page.Click ok button in popup
    homepage_page.Click cart icon
    cart_feature.Input delivery info and click pay button  ${tc_01.email}  ${tc_01.name}  ${tc_01.surname}  ${tc_01.address}  ${tc_01.phone_no}
    payment_method_page.Click next button
    payment_detail_page.Input card number           ${tc_01.card_number}
    payment_detail_page.Input expire date           ${tc_01.exp_date}
    payment_detail_page.Input cvc code              ${tc_01.cvc_code}
    payment_detail_page.Input card owner            ${tc_01.name}
    payment_detail_page.Click comfirm payment button
    payment_detail_page.Verify payment success
    payment_detail_page.Click ok button in popup
    sleep    1
    ${order_id}=    payment_complete_page.Get order id
    payment_complete_page.Click continue shopping
    homepage_page.Click user icon
    my_account_page.Click preparing tab
    my_account_page.Verify order already created    ${order_id}