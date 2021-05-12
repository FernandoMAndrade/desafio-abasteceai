#language: pt

@users
Funcionalidade: Users
  Validar operações da API Users

  @get_user_by_name
  Cenario: Buscar usuário pelo nome
    Dado que busco pelo nome "Naik"
    Então serviço deve retornar 200
    E todos os elementos devem conter "Naik" no campo name

  @get_user_posts_by_id
  Cenario: Buscar posts de usuário pelo id
    Dado que armazeno o primeiro id ao buscar por usuários
    E pesquiso por posts relacionados a este id
    Então requisição GET deve retornar 200
    E todos os posts devem pertencer ao usuário