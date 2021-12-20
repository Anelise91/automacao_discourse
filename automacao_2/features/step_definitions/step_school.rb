Dado("que acesso a pagina do site Cesar School") do
  visit "/"
end

Quando("acesso a segunda pagina da lista de posts") do
  find(".cc-btn.cc-ALLOW").click
  find(".menu-text", text: "School", visible: true).hover
  find(".menu-text", text: "Blog", visible: true).click
end

Quando("capturo titulo e data de publicacao do segundo post") do
  find(".nav-links .page-numbers:nth-child(2)").click
  @titulo_2 = find("article[class*=post-]:nth-child(2) > div > div > header >h2").text
  # @data_2 = find("article[class*=post-]:nth-child(2) .entry-date.published").text
  @dia = find("article[class*=post-]:nth-child(2) .entry-date.published .date-day").text
  @mes = find("article[class*=post-]:nth-child(2) .entry-date.published .date-month").text
  @ano = find("article[class*=post-]:nth-child(2) .entry-date.published .date-year").text
end

Quando("capturo titulo e autor da publicacao do terceiro post") do
  @titulo_3 = find("article[class*=post-]:nth-child(3) > div > div > header >h2").text
  @autor_3 = find("article[class*=post-]:nth-child(2) .author-name").text
end

Então("retorno as informacoes solicitadas alem do endereco") do
  endereco = find("div.onde p").text

  log "Título do segundo post: #{@titulo_2}"
  log "Data do segundo post: #{@dia}/#{@mes}/#{@ano}"
  log "Título do terceiro post: #{@titulo_3}"
  log "Autor do terceiro post: #{@autor_3}"
  log "Endereço do School: #{endereco}"
end
