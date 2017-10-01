*** Setting ***
Library    Selenium2Library
*** Variables ***
${URL}    http://139.59.106.112
${btn_history}
${user_name}
${user_id}
${walletId}
${wallet_balance}
${transaction_date}
${history_table_datetime_1}
${history_table_by_1}

*** Test Cases ***
Show Davy History
    Open Browser    ${URL}    browser=chrome
    Click link    link=History
#    Element Should Contain     id=${user_name}    DAVY
#    Element Should Contain     id=${user_id}    N00166324
#    Element Should Contain     id=${walletId}    0-171-21446-5
#    Element Should Contain     id=${wallet_balance}    500
    #Click Element id=${sdfsdf}
    #${tab_history_all}
      Element Should Contain  ${history_table_datetime_1}    1 ต.ค. 2560  14.00 น.
      Element Should Contain  ${history_table_by_1}    Debit
      Element Should Contain  ${history_amount_1}    1000
      Element Should Contain  ${history_table_datetime_1}    1 ต.ค. 2560  14.30 น.
      Element Should Contain  ${history_table_by_1}    Coffee
      Element Should Contain  ${history_amount_1}    30
    Click Element id=${tab_history_deposite}
      Element Should Contain  ${history_table_datetime_1}    1 ต.ค. 2560  14.00 น.
      Element Should Contain  ${history_table_by_1}    Debit
      Element Should Contain  ${history_amount_1}    1000
    Click Element id=${tab_history_withdraw}
      Element Should Contain  ${history_table_datetime_1}    1 ต.ค. 2560  14.30 น.
      Element Should Contain  ${history_table_by_1}    Coffee
      Element Should Contain  ${history_amount_1}    30
      Capture Page Screenshot
    Close Browser

#Show Pariyathida History
