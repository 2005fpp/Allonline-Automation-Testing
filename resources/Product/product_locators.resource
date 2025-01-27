*** Variables ***
${SEARCH_BOX}        //input[@name='q']
${SEARCH_BUTTON}     //button[@class='btn btn-default search']//span[@class='glyphicon glyphicon-icon-search']

${PRODUCT_TITLE_LINK}       (//a[contains(@title, '{PRODUCT_NAME}')])[1]

${ADD_TO_CART_BUTTON}       //button[@class='btn btn-addtocart btn-green gradient broad add-to-cart add-to-cart-cls-mobile']
${CART_INDICATOR}    //span[@class='cart-indicator']

${CART_BUTTON}        //*[@id="mini-basket"]/a
${PURCHASE_BUTTON}    //a[@class='btn btn-proceed btn-green gradient btn-lg wider proceed']

${PRODUCT_1_LOCATOR}
${PRODUCT_2_LOCATOR}
${PRODUCT_3_LOCATOR}