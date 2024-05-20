*** Settings ***
Library         SeleniumLibrary
Resource        setup_teardow.robot

Test Setup      Abrir o navegador e acessar a página do organo
Test Teardown   Fechar o navegador

*** Variables ***
${BOTAO_CARD}   id:form-botao

*** Test Cases ***
Verificar se os imputs obrigatórios foram preenchidos 
    Clicar no botão criar card
    Mostrar mensagem de erro aos campo preenchimento obrigatório

*** Keywords ***
Clicar no botão criar card
    Click Element    ${BOTAO_CARD}

Mostrar mensagem de erro aos campo preenchimento obrigatório
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
    