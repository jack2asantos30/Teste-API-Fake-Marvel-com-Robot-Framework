*** Settings ***
Documentation    Teste da API Fak da Marvel
Resource         ../resource/base.robot   
Test Setup      Setar client_key    jaqueline@hotmail.com

*** Test Cases ***
Deve buscar todos os personagens
    Buscar todos personagens    