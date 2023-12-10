*** Settings ***
Resource    ../page/loginPage.robot
Library    SeleniumLibrary    

*** Variables ***
${console_browser}        add_argument("chrome")

*** Keywords ***
Nova sessão
    Open Browser    url=${url}     browser=chrome    options=${console_browser}

Encerra sessão
    Log To Console    Encerrando Sessão
    Close Browser    