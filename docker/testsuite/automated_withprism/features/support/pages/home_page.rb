class HomePage < SitePrism::Page
  set_url "https://youse.com.br"

  element :btn_my_account, "a[href='https://www.youse.com.br/account']"
  element :about_home_insurance, "a[href='https://www.youse.com.br/seguro-residencial']"
  element :headline_message, "section[class='headline text-center']"

  def open_my_account
    self.btn_my_account.click
    MyAccountPage.new
  end

  def open_about_home_insurance
    self.about_home_insurance.click
    QuotePage.new
  end
end