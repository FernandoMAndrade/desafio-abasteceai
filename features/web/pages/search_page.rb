class SearchPage < SitePrism::Page
  element :div_produto, ".product-container"
  element :btn_add_product_to_cart, ".ajax_add_to_cart_button"

  def detalhes_produto
    div_produto.click
  end

  def add_to_cart
    div_produto.hover
    btn_add_product_to_cart.click
  end
end