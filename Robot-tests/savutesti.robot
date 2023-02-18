*** Settings ***
Library           SeleniumLibrary

*** Tasks ***
Avaa sovellus   
    Open Browser    http://localhost:3000/   chrome
    Sleep    2s
    [Teardown]    Close Browser
Klikkaa projektit nappia
    Open Browser    http://localhost:3000/    chrome
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    2s
    [Teardown]    Close Browser

Avaa Abshire and Sons projekti
    Open Browser    http://localhost:3000/    chrome
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/a
    Sleep    2s
    [Teardown]    Close Browser
