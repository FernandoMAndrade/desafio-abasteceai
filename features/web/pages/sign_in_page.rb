class SignIn < SitePrism::Page

  element :cmp_email, "#email"
  element :cmp_passwd, "#passwd"
  element :btn_sign_in, "#SubmitLogin"

  def login_valido
    cmp_email.set "teste@teste.org"
    cmp_passwd.set "123123"
    btn_sign_in.click
  end

end