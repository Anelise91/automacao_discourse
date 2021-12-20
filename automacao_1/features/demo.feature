#language:pt
#encode: UTF-8

@tag_geral
Funcionalidade: Verificar informações de itens em Demo

Contexto: Acessando o site
    Dado que acesso a pagina inicial do Discourse
    
@tag_1
Cenario: Apresentar os títulos de todos os tópicos fechados
    Quando seleciono a opcao 'Demo' no menu principal seguindo ate o fim da pagina
    Então verifico o titulo de todos os topicos fechados

@tag_2
Cenario: Apresentar quantidade de itens de cada categoria
    Quando seleciono a opcao 'Demo' no menu principal seguindo ate o fim da pagina
    Então verifico a quantidade de itens de cada categoria alem dos sem categoria

@tag_3
Cenario: Apresentar título do tópico com maior número de views
    Quando seleciono a opcao 'Demo' no menu principal seguindo ate o fim da pagina
    Então verifico o titulo do topico com mais views