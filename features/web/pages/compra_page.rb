class CompraPage < SitePrism::Page

  element :btn_proceed_to_checkout, "[title|='Proceed to checkout']"
  element :chk_i_agree, '#cgv', :visible => :all
  element :btn_pay_by_check, 'a.cheque', text: 'Pay by check'

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end

  def i_agree
    chk_i_agree.click
  end

  def pay_by_check
    btn_pay_by_check.click
  end

end