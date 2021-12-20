#language:pt
#encode: UTF-8

Funcionalidade: Verificar informações das listas de posts do site Cesar School

Cenario: Apresentar informações do segundo e terceiro post e endereço do Cesar School
    Dado que acesso a pagina do site Cesar School
    Quando acesso a segunda pagina da lista de posts 
    E capturo titulo e data de publicacao do segundo post
    E capturo titulo e autor da publicacao do terceiro post
    Então retorno as informacoes solicitadas alem do endereco 
    
