# 🛒 Allonline 7-Eleven Selenium Test Script 🤖

This project automates the process of ordering products, selecting delivery, and paying at 7-Eleven on the Allonline website using **Selenium** and **Robot Framework**. 

---

## 🎯 Purpose
The script simulates a real-world user scenario where a customer:
1. Logs in to their account.
2. Searches for products and adds them to the cart.
3. Proceeds to purchase, selects delivery, and fills in personal and address details.
4. Chooses cash payment at 7-Eleven.
5. Verifies the order summary and completes the purchase.

---

## 🛠️ Tools Used
- **Selenium**: For browser automation.
- **Robot Framework**: For test automation and keyword-driven testing.
- **Python**: For scripting and logic.
- **Browser Drivers**: ChromeDriver

---

## 📂 File Structure
```
allOnline_placeOrder_success.robot
├── login/
│   ├── login_keywords.resource
│   └── login_locators.resource
├── product/
│   ├── product_keywords.resource
│   └── product_locators.resource
├── shipping/
│   ├── shipping_keywords.resource
│   └── shipping_locators.resource
└── payment/
    ├── payment_keywords.resource
    └── payment_locators.resource
```

---

## 🧪 Test Cases
The main test case is **"Customers order, choose delivery, and pay at 7-Eleven success."** It includes the following steps:
```
*** Test Cases ***
Customers order, choose delivery, and pay at 7-Eleven success.
    Proceed to login    "email"    "password"
    Verify succesful login    แต้ม
    Close Cookie Banner

    Search, Add to Cart    AMARIT คอลลาเจน 30 แคปซูล    1
    Search, Add to Cart    แอคเน่-เอด ไฟว์ อิน วัน วอช ออยล์ คอนโทรล 100 มล.    2
    Search, Add to Cart    มาลี น้ำส้มแมนดาริน 100% 1,000 มล.    3
    Proceed to Purchase
    
    Select Delivery
    Fill Personal Field    ชญานิศา    วงศ์ภักดี    0895678912
    Fill Address Field    45/89    ซ.พระโขนง    กรุงเทพมหานคร    คลองเตย    คลองตัน
    
    Proceed to payment
    Select Cash Payment at 7-11

    Verify Summarize Delivery Info    ชญานิศา วงศ์ภักดี    0895678912    45/89  ซ.พระโขนง,  , คลองเตย คลองเตย กรุงเทพมหานคร 10110
    Verify Summarize Product Order    AMARIT คอลลาเจน 30 แคปซูล    แอคเน่-เอด ไฟว์ อิน วัน วอช ออยล์ คอนโทรล 100 มล.    มาลี น้ำส้มแมนดาริน 100% 1,000 มล.
    Verify Summarize Total Price    ฿ 417    ฿ 50    ฿ 467    123
    
    Process Final Purchase
    Verify Final Payment    หมายเลขสั่งซื้อ: #A437365905    วันที่สั่งซื้อ 15/01/2568    ชำระเงินสด ที่ร้านเซเว่นอีเลฟเว่น (7-11)
```
---

## 📜 Acknowledgments
This project was developed with support from **Gosoft CPALL** and **DEPA Thailand**. Special thanks to the teams for their guidance and resources.

---

## 📧 Contact
For questions or collaborations, feel free to reach out:  
📧 **Email**: Feen0305  

---

## 🎉 Happy Testing! 🎉
