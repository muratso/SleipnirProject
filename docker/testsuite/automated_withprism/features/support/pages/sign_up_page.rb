class SignUpPage < SitePrism::Page
  set_url "/users/sign_up"

  element :name, "input#user_name"
  element :email, "input#user_email"
  element :password, "input#user_password"
  element :password_confirmation, "input#user_password_confirmation"
  element :submit, "input[name='commit']"
  element :headline, "h2.hl2"
  element :notification_message, "div.flash-message__text"


  def fill_register_form(myemail,mypassword)
    self.name.set "John Doe"
    self.email.set myemail
    self.password.set mypassword
    self.password_confirmation.set mypassword
  end

  def submit_sign_up_form
    self.submit.click
  end
end