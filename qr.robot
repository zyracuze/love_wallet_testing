*** Setting ***
Library    Selenium2Library
*** Variables ***
${URL}    http://139.59.106.112
${page_tab}    page_tab
${amount}    amount
${btn_summit}    btn_summit
${balance}     100
${btn_pay}     btn_pay
${total_balance}    total_balance
${total_amount}    total_amount
${balance}    balance

*** Test Cases ***
paid coffee 30 bath have money in card 100 bath total 70 bath
    Open Browser    ${URL}/qr    browser=chrome
    Wait Until Element Contains    ${page_tab}    ยืนยันรายการ
    Element Should Contain    ${amount}    30
    Click Element    ${btn_summit}
    Wait Until Element Contains    ${balance}    100
    Wait Until Element Contains    ${total_amount}    30
    Wait Until Element Contains    ${total_balance}    70
    Capture Page Screenshot
    Click Element    ${btn_summit}    btn_summit
    Close Browser

*** Keyword ***
