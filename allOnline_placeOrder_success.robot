*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ./resources/Authentication/login_keywords.resource
Resource    ./resources/Product/product_keywords.resource
Resource    ./resources/Shipping/shipping_keywords.resource 
Resource    ./resources/Payment/payment_keywords.resource 


Suite Setup          Open Maximized Browser And Go to Allonline
Suite Teardown       Close Browser

*** Variables ***
${URL}    https://www.allonline.7eleven.co.th/
${BROWSER}    CHROME

*** Test Cases ***
Customers order, choose delivery, and pay at 7-Eleven success.
    Proceed to login    feenkung.gamer@gmail.com    Feen#03052548
    Verify succesful login    แต้ม
    Close Cookie Banner

    # Search, Add to Cart    AMARIT คอลลาเจน 30 แคปซูล    1
    # Search, Add to Cart    แอคเน่-เอด ไฟว์ อิน วัน วอช ออยล์ คอนโทรล 100 มล.    2
    # Search, Add to Cart    มาลี น้ำส้มแมนดาริน 100% 1,000 มล.    3
    Proceed to Purchase
    
    Select Delivery
    Fill Personal Field    ชญานิศา    วงศ์ภักดี    0895678912
    Fill Address Field    45/89    ซ.พระโขนง    กรุงเทพมหานคร    คลองเตย    คลองตัน
    
    Proceed to payment
    Select Cash Payment at 7-11

    Verify Summarize Delivery Info    ชญานิศา วงศ์ภักดี    0895678912    45/89  ซ.พระโขนง,  , คลองเตย คลองเตย กรุงเทพมหานคร 10110
    Verify Summarize Product Order    AMARIT คอลลาเจน 30 แคปซูล    แอคเน่-เอด ไฟว์ อิน วัน วอช ออยล์ คอนโทรล 100 มล.    มาลี น้ำส้มแมนดาริน 100% 1,000 มล.
    Verify Summarize Total Price    ฿ 417    ฿ 50    ฿ 467    123
    
    # Process Final Purchase
    Verify Final Payment    หมายเลขสั่งซื้อ: #A437365905    วันที่สั่งซื้อ 15/01/2568    ชำระเงินสด ที่ร้านเซเว่นอีเลฟเว่น (7-11)

*** Keywords ***
Open Maximized Browser And Go to Allonline
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Go to    url=${URL}

