*** Settings ***
Resource    ./login_locators.resource

*** Keywords ***
Proceed to login
    [Arguments]    ${email}    ${password}
    Entry Login Page
    Fill with email and password    ${email}    ${password}
    Click Login Button
    
Entry Login Page
    Click Element    xpath=${LOGIN_PAGE_XPATH}

Fill with email and password
    [Arguments]    ${email}    ${password}
    Input Text    xpath=${EMAIL_BOX_XPATH}    text=${email}
    Input Text    xpath=${PASS_BOX_XPATH}    text=${password}

Click Login Button
    Click Element    xpath=${LOGIN_BUTTON_XPATH}

Verify succesful login
    [Arguments]    ${exptKEY}
    Wait Until Element Is Visible    xpath=${ALLMEMBER_XPATH}    timeout=10
    Element Should Contain    xpath=${ALLMEMBER_XPATH}    expected=${exptKEY}

Close Cookie Banner
    Wait Until Page Contains Element    xpath=${COOKIE_GDPR_BUTTON}    timeout=10
    Click Element    xpath=${COOKIE_GDPR_BUTTON}