class MyAccountPage < SitePrism::Page
  set_url "/users/email_verifications/new"

  element :email, "input#email"
  element :submit, "input[name='commit']"
  element :sign_up, "a[href='/users/sign_up']"
  element :password, "input#user_password"
  element :notification_message, "div.flash-message__text"
  element :greetings_message, "a.account-header__account-link.account-header__account-with-sub-menu"
  element :logout_button, "a#track_logout"


  def click_on_sign_up
    self.sign_up.click
    SignUpPage.new
  end

  def click_on_submit
    self.submit.click
  end

  def fill_email (myemail)
    self.email.set myemail
  end

  def fill_password(mypassword)
    self.password.set mypassword
  end

end


