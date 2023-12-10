*** Settings ***
Resource         ../step/loginStep.robot
Library    SeleniumLibrary

*** Variables ***
${url}                        https://the-internet.herokuapp.com/
${link_autentic}              xpath://*[@id="content"]/ul/li[3]/a

*** Keywords ***
Acesso site de teste
    Log To Console    Acessando Site de testes
    Wait Until Location Is    ${url}
    Sleep    10

Clicando no link e validando direcionamento
    Log To Console    Clicando link autenticação basica
    Mouse Over        ${link_autentic}
    Click Element     ${link_autentic}
    Sleep    10

Inserindo login e password
    Log To Console                   Login e senha
    Wait Until Element Is Visible    Nome de usuário

        

