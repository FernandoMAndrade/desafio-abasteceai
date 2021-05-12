Quando('pesquiso por {string}') do |string|
  @home_page.search_query(string)
end

Quando('e acesso sua página') do
  @search_page = SearchPage.new
  @search_page.detalhes_produto
end

Então('sou redirecionado para a página do {string}') do |string|
  h1 = find('h1')
  expect(h1).to have_content string
end