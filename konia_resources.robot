***Settings***
Library    SeleniumLibrary


*** Variables ***
${URL}                      https://www.konia.com.br/
${MENU_QUEM_SOMOS}          xpath=//*[@id="menu-item-21864"]/a[contains(.,'Quem somos')]
${TITULO_QUEM_SOMOS}        Nós somos a Konia Tecnologia
${MENU_BLOG}                xpath=//*[@id="menu-item-21871"]/a
${BOTAO_PESQUISA}           //*[@id="search-1"]/form/input
${CAMPO_PESQUISA_BLOG}      //*[@id="search-1"]/form/label/input
${VALIDAÇÃO_ARTIGO}         //*[@id="post-49"]/div/h2/a

***Keywords***
Abrir o navegador
    Open Browser    ${URL}    Chrome
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que o usuário esteja na página home page da Konia.com.br
    Go To    url=${URL}

Quando ele clicar no menu "Quem Somos"
    Click Element    locator=${MENU_QUEM_SOMOS}

Então o título da página deverá ser "Quem Somos "
    Wait Until Page Contains        text=${TITULO_QUEM_SOMOS}    

Quando ele clicar no menu " Blog"
    Click Element    locator=${MENU_BLOG} 

E pesquisar por "${PESQUISA}" no campo de busca
    Input Text       locator=${CAMPO_PESQUISA_BLOG}      text=${PESQUISA}
    Sleep            10s
    Click Element    locator=${BOTAO_PESQUISA}           

Então deverá ser exibido na tela artigos referente ao tema buscado
    Wait Until Page Contains Element     locator=${VALIDAÇÃO_ARTIGO}   
