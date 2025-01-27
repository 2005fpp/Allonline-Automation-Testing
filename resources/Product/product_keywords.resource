*** Settings ***
Resource    ./product_locators.resource

*** Keywords ***
Search, Add to Cart
    [Arguments]    ${ProductName}    ${exptCartIndicator}
    Search Product    ${ProductName}
    Add Product to Cart    ${ProductName}
    Verify Cart badge    ${exptCartIndicator}
    

Search Product
    [Arguments]    ${ProductName}
    Input Text    xpath=${SEARCH_BOX}    ${ProductName}
    Click Element      xpath=${SEARCH_BUTTON}

Add Product to Cart
    [Arguments]    ${ProductName}
    ${PRODUCT_LINK}=    Replace String    xpath=${PRODUCT_TITLE_LINK}    {PRODUCT_NAME}    ${ProductName}
    Click Element      ${PRODUCT_LINK}
    Wait Until Page Contains Element    xpath=${ADD_TO_CART_BUTTON}
    Click Element     xpath=${ADD_TO_CART_BUTTON}

Verify Cart badge
    [Arguments]    ${exptCartIndicator}
    Wait Until Element Contains    xpath=${CART_INDICATOR}    text=${exptCartIndicator}
    Element Should Contain    xpath=${CART_INDICATOR}    expected=${exptCartIndicator}


Proceed to Purchase
    Double Click Element    xpath=${CART_BUTTON}
    Scroll Element Into View    xpath=${PURCHASE_BUTTON}
    Wait Until Element Is Visible    xpath=${PURCHASE_BUTTON}
    Click Element      xpath=${PURCHASE_BUTTON}
