*** Setting ***
Library    Selenium2Library
*** Variables ***
${URL}    localhost:8882
${helloID}    hello

*** Test Cases ***
First Page Show Hello_World
    Open Browser    ${URL}    browser=chrome
    Element Should Contain    id=${helloID}    Hello_World
    Capture Page Screenshot
    Close Browser

*** Keyword ***
