*** Settings ***
Library           SeleniumLibrary

*** Tasks ***
Projektin otsikko- ja sisältötekstin muokkaus   
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/button
    Click Element    xpath://*[@id="name"]
    Clear Element Text    xpath://*[@id="name"]
    Input Text    xpath://*[@id="name"]    Vaihdettu nimi
    Click Element    xpath://*[@id="description"]
    Clear Element Text    xpath://*[@id="description"]
    Input Text    xpath://*[@id="description"]    Vaihdettu sisältö
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/form/div/button[1]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/a
    Sleep    3s
    [Teardown]    Close Browser

Projektin aktivoiminen ja deaktivoiminen
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/button
    Click Element    xpath://*[@id="isActive"]
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/form/div/button[1]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/a
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/button
    Click Element    xpath://*[@id="isActive"]
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/form/div/button[1]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/a
    Sleep    3s
    [Teardown]    Close Browser
Budjetti kentän nappien painaminen
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/button
    Click Element    xpath://*[@id="budget"]
    Input Text    xpath://*[@id="budget"]    0
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/form/div/button[1]
    Sleep    2s
    Click Element    xpath://*[@id="budget"]
    Press Keys    None    ARROW_UP    ARROW_UP
    Sleep    2s
    Press Keys    None    ARROW_DOWN
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/form/div/button[1]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[1]/div/section/a
    Sleep    3s
    [Teardown]    Close Browser
Projektin editoimisen peruuttaminen
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="root"]/header/a[2]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[2]/div/section/button
    Click Element    xpath://*[@id="isActive"]
    Sleep    2s
    Click Element    xpath://*[@id="name"]
    Clear Element Text    xpath://*[@id="name"]
    Input Text    xpath://*[@id="name"]    Peruuta muutokset
    Sleep    2s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[2]/form/div/button[2]
    Click Element    xpath://*[@id="root"]/div/div[1]/div[2]/div/section/a
    Sleep    3s
    [Teardown]    Close Browser
Sivun rullaaminen, lisä projektien lataaminen ja ladatun projektin muokkaus
    Open Browser    http://localhost:3000/    chrome
    Maximize Browser Window
    Click Element    xpath://*[@id="root"]/header/a[2]
    Wait Until Page Contains Element    xpath://*[@id="root"]/div/div[2]/div/div/button
    Scroll Element Into View    xpath://*[@id="root"]/div/div[2]/div/div/button
    Click Element    xpath://*[@id="root"]/div/div[2]/div/div/button
    Sleep    1s
    Scroll Element Into View    xpath://*[@id="root"]/div/div[2]/div/div/button
    Click Element    xpath://*[@id="root"]/div/div[1]/div[37]/div/section/button
    Click Element    xpath://*[@id="name"]
    Clear Element Text    xpath://*[@id="name"]
    Input Text    xpath://*[@id="name"]    Ladatun projektin otsikon vaihto
    Click Element    xpath://*[@id="isActive"]
    Click Element    xpath://*[@id="budget"]
    Press Keys    None    ARROW_UP    ARROW_UP
    Click Element    xpath://*[@id="root"]/div/div[1]/div[37]/form/div/button[1]
    Sleep    1s
    Click Element    xpath://*[@id="root"]/div/div[1]/div[37]/div/section/a
    Sleep    3s
    [Teardown]    Close Browser