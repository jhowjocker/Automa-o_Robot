*** Settings ***
Resource    ../run/validaRedirect.robot

*** Keywords ***
Dado que acesso site
    Acesso site de teste

Quando clico no link de direcionamento
    Clicando no link e validando direcionamento

Então coloco login e senha
    Inserindo login e password