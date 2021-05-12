Dado('que busco pelo nome {string}') do |nome|
  @response = Users.new.buscar_por_nome(nome)
end

Então('serviço deve retornar {int}') do |code|
  expect(@response.code).to eql code
end

Então('todos os elementos devem conter {string} no campo name') do |nome|
  response_data_array = @response.parsed_response["data"]
  response_data_array.each { |a| expect(a).to have_content nome }
end

Dado('que armazeno o primeiro id ao buscar por usuários') do
  @response = Users.new.buscar_usuarios
  @first_user_id = @response.parsed_response["data"][0]["id"]
end

Dado('pesquiso por posts relacionados a este id') do
  @response = Users.new.buscar_posts_por_id(@first_user_id)
end

Então('requisição GET deve retornar {int}') do |code|
  expect(@response.code).to eql code
end

Então('todos os posts devem pertencer ao usuário') do
  response_data_array = @response.parsed_response["data"]
  response_data_array.each { |a| expect(a["user_id"]).to eql @first_user_id }
end