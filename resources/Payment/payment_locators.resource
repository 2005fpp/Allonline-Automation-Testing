*** Variables ***
${PROCEED_PAYMENT_BUTTON}    //*[@id="continue-payment-btn"]

${PAYMENT_OPTION}    //*[@id="payment-options"]/div[3]/button
${ADDRESS_INFO}      //span[contains(@class,'address ellipsis-full')]

${AMARIT_NAME_PATH}    //td[contains(text(),'AMARIT คอลลาเจน 30 แคปซูล')]
${AMARIT_QTY_PATH}    //tbody/tr[3]/td[3]
${AMARIT_PRICE_PATH}    //td[contains(text(),'฿ 119')]

${ACNE_NAME_PATH}    //td[contains(text(),'แอคเน่-เอด ไฟว์ อิน วัน วอช ออยล์ คอนโทรล 100 มล.')]
${ACNE_QTY_PATH}    //tbody/tr[6]/td[3]
${ACNE_PRICE_PATH}    //td[contains(text(),'฿ 149')]

${MALEE_NAME_PATH}    //td[contains(text(),'มาลี น้ำส้มแมนดาริน 100% 1,000 มล.')]
${MALEE_QTY_PATH}      //tbody/tr[9]/td[3]
${MALEE_PRICE_PATH}    //td[contains(text(),'฿ 149')]

${SUM_PRICE_PATH}    //b[contains(text(),'฿ 417')]
${DELIVERLY_PRICE_PATH}      //b[contains(text(),'฿ 50')]
${TOTAL_PRICE_PATH}    //span[@id='totalAmount']
${ALL_MEMBER_POINT}    //b[@class='font-normal font-Online']

${FULL_PURCHASE_BUTTON}    //button[@class='btn js-pdbc btn-proceed btn-green gradient btn-lg btn-half wide pull-right space-down continue-payment-btn continue-payment-btn-popup']
${ORDER_HISTORY_URL}    https://www.allonline.7eleven.co.th/account/order-history/
${ORDER_DETAIL_PATH}    //*[@id="my-orders-accordion"]/div[1]/a/div/div[2]/a
${ORDER_NUMBER_PATH}    //*[@id="page"]/div[2]/div[2]/div[2]/div[2]/div[1]/b
${ORDER_DATE_PATH}    //*[@id="page"]/div[2]/div[2]/div[2]/div[2]/div[3]/b
${ORDER_PAYMENT_METHOD_PATH}    //*[@id="page"]/div[2]/div[2]/div[2]/div[5]/div/div/div/div[2]/div[2]
