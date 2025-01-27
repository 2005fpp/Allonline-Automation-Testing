*** Settings ***
Resource    ./shipping_locators.resource

*** Keywords ***
Select Delivery
    Click Element    xpath=${TAB_ADDRESS}
    
Fill Personal Field
    [Arguments]    ${FIRST_NAME}    ${LAST_NAME}    ${PHONE}
    Click Element    xpath=${NEW_ADDRESS_BUTTON}
    Input Text    xpath=${FIRST_NAME_BOX}    text=${FIRST_NAME}
    Input Text    xpath=${LAST_NAME_BOX}    text=${LAST_NAME}
    Input Text    xpath=${PHONE_BOX}    text=${PHONE}

Fill Address Field
    [Arguments]    ${ADDRESS_NUMBER}    ${ADDRESS_SOI}    ${PROVINCE}    ${DISTRICT}    ${SUBDISTRICT} 
    Input Text    xpath=${ADDRESS_NUMBER_BOX}    text=${ADDRESS_NUMBER}
    Input Text    xpath=${ADDRESS_SOI_BOX}    text=${ADDRESS_SOI}
    
    Click Element    xpath=${PROVINCE_DROPDOWN}
    Wait Until Element Is Visible    xpath=//ul[contains(@class, 'select2-results__options')]
    Click Element    xpath=//li[contains(@class, 'select2-results__option') and text()='${PROVINCE}']

    Click Element    xpath=${DISTRICT_DROPDOWN}
    Wait Until Element Is Visible    xpath=//ul[contains(@class, 'select2-results__options')]
    Click Element    xpath=//li[contains(@class, 'select2-results__option') and text()='${DISTRICT}']

    Click Element    xpath=${SUBDISTRICT_DROPDOWN}
    Wait Until Element Is Visible    xpath=//ul[contains(@class, 'select2-results__options')]
    Click Element    xpath=//li[contains(@class, 'select2-results__option') and text()='${SUBDISTRICT}']

    CLOSE MAP

CLOSE MAP
    Sleep    2s
    Click Button    xpath=${CLOSE_MAP_BUTTON}
