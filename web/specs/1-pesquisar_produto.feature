#language: pt

Funcionalidade: Pesquisar por produto

  @pesquisa_valida
  Cenario: Pesquisar por produto válido
    Dado estou na página da loja
    Quando pesquiso por "Faded Short Sleeve"
    E e acesso sua página
    Então sou redirecionado para a página do "Faded Short Sleeve"