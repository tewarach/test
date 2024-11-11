*** Variables ***
${payment_detail.card_number.text}          xpath=//input[@id="basic_bin"]
${payment_detail.exp_date.text}             xpath=//input[@id="basic_exp"]
${payment_detail.cvc_code.text}             xpath=//input[@id="basic_cvc"]
${payment_detail.card_owner.text}           xpath=//input[@id="basic_owner"]
${payment_detail.confirm_payment.text}      xpath=//button[@type="submit"]/span[text()='Confirm Payment']
${payment_detail.payment_success.text}      xpath=//div[text()='Payment successfully']  #เปลี่ยน
${payment_detail.ok.button}                 xpath=//button[@type="button"]/span[text()='OK']