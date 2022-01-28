*** Settings ***
Documentation    Base para ações de teste na API

Library          RequestsLibrary

*** Variables ***
${baseURL}    http://marvel.qaninja.academy


*** Keywords ***
Setar client_key
    [Arguments]    ${email}    
    &{usuario}     Create Dictionary    email=${email} 

    ${resposta}    POST On Session    
    ...            ${baseURL}/accounts     
    ...            json=${usuario}

    ${client_key}  Set Variable    ${response.json()}[client_key]             
    &{HEADERS}     Create Dictionary    client_key=${client_key}
    Set Suite Variable    &{HEADERS}
           
Buscar todos personagens
    ${resposta}   GET On Session  APIMarvel   ${baseURL}/characters
    Set Suite Variable     ${resposta}

