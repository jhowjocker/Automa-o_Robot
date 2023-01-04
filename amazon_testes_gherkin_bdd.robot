*** Settings ***
Documentation    Esta switch testa o site da Amazom.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 1 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste Verifica o menu eletronicos do site da amazom.com.br
    ...              e verifica a categoria computadores e Informática
    [Tags]           menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Caso de teste 2 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos    lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "xbox series s"
    Então um produto da linha "xbox series s" deve ser mostrado na página
