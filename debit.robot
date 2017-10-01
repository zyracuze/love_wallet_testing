*** Setting ***
Library    Selenium2Library
*** Variables ***
${URL}    http://139.59.106.112
${debit_tab}    debit_tab
${card_tab}    card_tab
${amount_100}    amount_100
${amount_500}    amount_500
${amount_1000}    amount_1000
${btn_pay}     btn_pay
${old_balance}    0
${invoice_income}    invoice_income
${total_balance}    total_balance
${balance}    0
${btn_confirm}    btn_confirm
${btn_kbank}    btn_kbank

*** Test Cases ***
select debit_tab to top up 100 bath
    Open Browser    ${URL}/topup_page    browser=chrome
    Wait Until Element Contains    id=${debit_tab}    debit
    Click Element    ${debit_tab}
    Click Element    ${amount_100}
    Click Element    ${btn_pay}
    Wait Until Element Contains    ${invoice_income}    100
    Capture Page Screenshot
    Element Should Contain    ${old_balance}    0
    Element Should Contain    ${invoice_income}    500
    Element Should Contain    ${total_balance}    ${balance}
    Click Element    ${btn_confirm}
    Wait Until Element Contains    ${btn_kbank}    confirm
    Capture Page Screenshot
    Close Browser

*** Keyword ***
