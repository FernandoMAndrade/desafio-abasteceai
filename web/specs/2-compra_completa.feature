#language: pt

Funcionalidade: Comprar na plataforma

  @compra_valida
  Cenario: Usuário cadastrado realiza compra por depósito com sucesso
    Dado estou na página da loja
    Quando adiciono "Faded Short Sleeve" ao carrinho
    E finalizo fluxo de compra
    Então sou informado que "Your order on My Store is complete."