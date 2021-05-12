class HomePage < SitePrism::Page
  set_url '/index.php'

  element :cmp_search, "#search_query_top"
  element :btn_search, "button.button-search"

  def search_query(string)
    cmp_search.set string
    btn_search.click
  end

end