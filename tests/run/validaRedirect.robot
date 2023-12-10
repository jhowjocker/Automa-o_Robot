*** Settings ***
Documentation    Esta switch testa o site de testes
Resource         ../page/loginPage.robot
Resource         ../step/loginStep.robot
Resource         ../resouce/baseResource.robot
Test Setup       Nova sessão
Test Teardown    Encerra sessão


*** Test Cases ***
CT01 - Validando direcionamento
    [Documentation]    Testando conhecimentos
    [Tags]           validaCT01
    Dado que acesso site
    Quando clico no link de direcionamento
    Então coloco login e senha
    

# Caso de teste 2 - Pesquisa de um Produto
#     [Documentation]  Esse teste verifica a busca de um produto
#     [Tags]           busca_produtos    lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar se o título da página fica "Console Xbox Series S"
#     Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"