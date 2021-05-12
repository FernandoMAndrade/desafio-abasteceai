require 'httparty'

class Users
  include HTTParty
  base_uri 'https://gorest.co.in/public-api'

  def buscar_usuarios
    return self.class.get("/users")
  end

  def buscar_por_nome(nome)
    payload = { name: nome }
    return self.class.get("/users", body: payload)
  end

  def buscar_posts_por_id(id)
    return self.class.get("/users/#{id}/posts")
  end
end