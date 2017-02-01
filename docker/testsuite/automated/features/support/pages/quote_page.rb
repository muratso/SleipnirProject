class QuotePage < SitePrism::Page
  set_url "https://www.youse.com.br/seguro-residencial"

  element :product_banner, "div.product-banner__card"
  element :online_quote_button, "a[href='https://www.youse.com.br/home/order/new']"
  element :first_step_greeting, "h2.h2.section-vertical-spacing"
  element :house_option, "label[for='home_order_flow_pricing_requirements_property_attributes_type_house']"
  element :state_option, "select#home_order_flow_pricing_requirements_property_attributes_address_attributes_state"
  element :home_value, "input#home_order_flow_pricing_requirements_property_attributes_price"
  element :nickname, "input#home_order_flow_pricing_requirements_lead_person_attributes_name"
  element :phone_number, "input#home_order_flow_pricing_requirements_lead_person_attributes_phone"
  element :email, "input#home_order_flow_pricing_requirements_lead_person_attributes_email"
  element :submit, "input[type=submit]"
  element :second_step_greeting, "div.h2"
  element :coverage_fire, "li[data-id='home/coverage/1']"
  element :third_step_greeting, ".assistance--title"
  element :forth_step_greeting, "p.h2"
  element :zip_code, "input#home_order_flow_property_data_property_attributes_address_attributes_zipcode"
  element :address, "input#home_order_flow_property_data_property_attributes_address_attributes_street"
  element :neighborhood, "input#home_order_flow_property_data_property_attributes_address_attributes_neighborhood"
  element :home_number, "input#home_order_flow_property_data_property_attributes_address_attributes_number"
  element :city, "input#home_order_flow_property_data_property_attributes_address_attributes_city"
  element :address_complement, "input#home_order_flow_property_data_property_attributes_address_attributes_complement"
  element :fifth_step_greeting, "div.h2"
  element :full_name, "input#home_order_flow_insured_person_data_insured_person_attributes_name.form__input-text"
  element :gender, "select#home_order_flow_insured_person_data_insured_person_attributes_gender"
  element :cpf, "input#home_order_flow_insured_person_data_insured_person_attributes_cpf"
  element :birthdate, "input#home_order_flow_insured_person_data_insured_person_attributes_date_of_birth"
  element :occupation, "span.select2-selection__placeholder"
  element :occupation_field, "input.select2-search__field"
  element :occupation_result, "#select2-home_order_flow_insured_person_data_insured_person_attributes_occupation-result-n5cl-999013"
  element :salary_range, "select#home_order_flow_insured_person_data_insured_person_attributes_salary_range"
  element :payment_button, "button[type='submit']"
  element :payment_instruction, "h2.summary-credit-card__title"
  element :error_message, "ul.form__error-messages"

  def fill_first_step
    self.house_option.click
    self.state_option.select("Distrito Federal")
    self.home_value.set 20000
    self.nickname.set "Muratso"
    self.phone_number.set "11999999999"
    self.email.set "johndoe@temp.com.br"
  end

  def fill_second_step
    self.coverage_fire.find("#coverages__selected_lmi").set 400000
  end

  def fill_forth_step
    self.zip_code.set "72600-119"
    self.address.set "Quadra 101 Conjunto 15"
    self.neighborhood.set "Recanto das Emas"
    self.city.set "Brasília"
    self.home_number.set 22
    self.address_complement.set "Casa"
  end

  def fill_fifth_step myname
    self.full_name.set myname
    sleep(2)
    self.gender.select("Masculino")
    sleep(2)
    self.cpf.set "03674784122"
    sleep(2)
    self.birthdate.set "23/04/1993"
    self.birthdate.send_keys(:enter)
    sleep(2)
    self.occupation.click
    sleep(3)
    self.occupation_field.set "Analista de sistemas"
    sleep(1)
    self.occupation_field.send_keys(:enter)
    sleep(2)
    self.salary_range.select("De R$ 2.500,01 a R$ 4.500,00")
    sleep(2)
  end

end
