Dado('estou na página da loja') do
  @home_page = HomePage.new
  @home_page.load
end

Quando('adiciono {string} ao carrinho') do |string|
  @home_page.search_query(string)
  @search_page = SearchPage.new
  @search_page.add_to_cart
end

Quando('finalizo fluxo de compra') do
  @compra_page = CompraPage.new
  @compra_page.proceed_to_checkout
  @compra_page.proceed_to_checkout
  @sign_in_page = SignIn.new
  @sign_in_page.login_valido
  click_on('Proceed to checkout')
  @compra_page.i_agree
  click_on('Proceed to checkout')
  @compra_page.pay_by_check
  click_on('I confirm my order')
end

Então('sou informado que {string}') do |string|
  expect(page).to have_css('.alert-success')
  mensagem_sucesso = find('p.alert-success')
  expect(mensagem_sucesso).to have_content(string)
end