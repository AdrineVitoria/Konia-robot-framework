***Settings***
Resource        konia_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

***Test Cases***
Caso de Teste 01 - Acesso ao menu "Quem Somos" 
    [Tags]  menus
    Dado que o usuário esteja na página home page da Konia.com.br
    Quando ele clicar no menu "Quem Somos"
    Então o título da página deverá ser "Quem Somos"
    
Caso de Teste 02 - Pesquisa sobre o artigo JMeter
    [Tags]  busca_artigos
    Dado que o usuário esteja na página home page da Konia.com.br
    Quando ele clicar no menu " Blog"
    E pesquisar por "JMeter" no campo de busca
    Então deverá ser exibido na tela artigos referente ao tema buscado