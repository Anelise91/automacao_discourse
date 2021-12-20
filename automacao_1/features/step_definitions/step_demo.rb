Dado("que acesso a pagina inicial do Discourse") do
  visit "/"
end

Quando("seleciono a opcao {string} no menu principal seguindo ate o fim da pagina") do |demo|
  find(:xpath, '(//a[@rel="noopener"])[2]').click
  result = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(result)

  el = find(:css, ".topic-list-bottom")
  scroll_to(el, align: :bottom)
  scroll_to(page.find(".footer-message.ember-view"))
  expect(page).to have_content("There are no more latest topics")
end

Então("verifico o titulo de todos os topicos fechados") do
  page.all(:css, 'tr[class*="closed ember-view"] a.title.raw-link.raw-topic-link').each do |fechados|
    log fechados.text
  end
end

Então("verifico a quantidade de itens de cada categoria alem dos sem categoria") do
  category = []
  page.all(:css, ".category-name").each do |name|
    category.push(name.text)
  end

  sem_categoria = []
  page.all(:css, "tr.category-uncategorized").each do |uncategorized|
    sem_categoria.push(uncategorized)
  end

  log category.tally
  log "Sem categoria: #{sem_categoria.length}"
end

Então("verifico o titulo do topico com mais views") do
  maior_view = find("tr[class*='topic-list-item category'] .num.views.heatmap-med.topic-list-data")
  titulo = page.execute_script("return arguments[0].parentElement.childNodes[1].innerText", maior_view)
  log "Tópico com maior número de views: #{titulo}"
end
