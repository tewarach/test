*** Variables ***
${homepage.user_icon.button}            xpath=(//div/span[@aria-label='user']/*)[1]/ancestor::div[@class="icon-portion"]
${homepage.search.text}                 xpath=//input[@placeholder="input search text"]
${homepage.search.button}               xpath=//button[@type="button"]/span[@aria-label="search"]
${homepage.product.button}              xpath=//div[text()="{product}"]
${homepage.cart_icon.button}            xpath=(//div/span[@aria-label="shopping-cart"]/*)[1]