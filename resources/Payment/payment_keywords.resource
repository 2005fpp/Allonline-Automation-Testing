*** Settings ***
Resource    ./payment_locators.resource

*** Keywords ***
Proceed to payment
    Click Element      xpath=${PROCEED_PAYMENT_BUTTON}

Select Cash Payment at 7-11
    Click Element    xpath=${PAYMENT_OPTION}

Verify Summarize Delivery Info
    [Arguments]    ${exptNAME}    ${exptPHONE}    ${exptADDRESS}
    Element Should Contain    xpath=${ADDRESS_INFO_FIELD}    expected=ชญานิศา วงศ์ภักดี
    Element Should Contain    xpath=${ADDRESS_INFO_FIELD}    expected=0895678912
    Element Should Contain    xpath=${ADDRESS_INFO_FIELD}    expected=45/89  ซ.พระโขนง,  , คลองเตย คลองเตย กรุงเทพมหานคร 10110

Verify Summarize Product Order
    [Arguments]    ${exptProduct_1_NAME}    ${exptProduct_2_NAME}    ${exptProduct_3_NAME}
    Element Text Should Be    xpath=${AMARIT_NAME_PATH}    expected=${exptProduct_1_NAME}
    Element Text Should Be    xpath=${AMARIT_QTY_PATH}    expected=1
    Element Text Should Be    xpath=${AMARIT_PRICE_PATH}   expected=฿ 119

    Element Text Should Be    xpath=${ACNE_NAME_PATH}    expected=${exptProduct_2_NAME}
    Element Text Should Be    xpath=${ACNE_QTY_PATH}    expected=1
    Element Text Should Be    xpath=${ACNE_PRICE_PATH}    expected=฿ 149

    Element Text Should Be    xpath=${MALEE_NAME_PATH}    expected=${exptProduct_3_NAME}
    Element Text Should Be    xpath=${MALEE_QTY_PATH}    expected=1
    Element Text Should Be    xpath=${MALEE_PRICE_PATH}    expected=฿ 149

Verify Summarize Total Price
    [Arguments]    ${exptSUM_PRICE}    ${exptDELIVERLY_PRICE}    ${exptTOTAL_PRICE}    ${exptALL_MEMBER_POINT}
    Element Text Should Be    xpath=${DELIVERLY_PRICE_PATH}    expected=${exptSUM_PRICE}
    Element Text Should Be    xpath=${DELIVERLY_PRICE_PATH}    expected=${exptDELIVERLY_PRICE}
    Element Text Should Be    xpath=${TOTAL_PRICE_PATH}    expected=${exptTOTAL_PRICE} 
    Element Text Should Be    xpath=${ALL_MEMBER_POINT}    expected=${exptALL_MEMBER_POINT}

Process Final Purchase
    Click Button    xpath=${FULL_PURCHASE_BUTTON}

Verify Final Payment
    [Arguments]    ${exptORDER_NUMBER}    ${exptORDER_DATE}    ${exptPAYMENT_METHOD}
    Go to    url=${ORDER_HISTORY_URL}
    Wait Until Page Contains Element    xpath=${ORDER_DETAIL_PATH}    timeout=10
    Click Element    xpath=${ORDER_DETAIL_PATH}
    Wait Until Page Contains Element    xpath=${ORDER_PAYMENT_METHOD_PATH}    timeout=10
    Element Should Contain    xpath=${ORDER_NUMBER_PATH}    expected=${exptORDER_NUMBER}
    Element Should Contain    xpath=${ORDER_DATE_PATH}    expected=${exptORDER_DATE}
    Element Should Contain    xpath=${ORDER_PAYMENT_METHOD_PATH}    expected=${exptPAYMENT_METHOD}