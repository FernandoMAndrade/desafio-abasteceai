#language: pt

Funcionalidade: Pesquisar por produto
  Sendo um cliente
  Quero pesquisar produto
  Para que eu possa ver suas informações antes da compra

  @pesquisa_valida
  Cenario: Pesquisar por produto válido
    Dado estou na página da loja
    Quando pesquiso por "Faded Short Sleeve"
    E e acesso sua página
    Então sou redirecionado para a página do "Faded Short Sleeve"