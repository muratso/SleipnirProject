Feature: Quote insurance

  Scenario: It should quote a home insurance
    Given I am on the home page
    When I press "Saiba mais sobre Seguro Residencial"
    Then I should see "Sua casa é do seu jeito"
    When I press "Cotação Online"
    Then I should see "Oi. A gente quer te conhecer melhor, é rapidinho."
    When I select the radio "house"
    Then I should see "que fica no estado"
    When I select the option
    Then I should see "no valor aproximado de"
    When I fill in "home_order_flow_pricing_requirements_property_attributes_price" with "20000"
      And I fill in "home_order_flow_pricing_requirements_lead_person_attributes_name" with "Eric"
    Then I should see "e fale comigo no"
    When I fill in "home_order_flow_pricing_requirements_lead_person_attributes_phone" with "11999999999"
      And I fill in "email" with "johndoe@testmail.com.br"
    When I submit the form
    Then I should see "Essa é a parte mais legal:"
    When I move slider in "home/coverage/1"
    When I submit the form
    Then I should see "Sugestões de Assistências Youse para você."
    When I submit the form
    Then I should see "Legal! Agora precisamos saber algumas informações sobre o imóvel"
    When I fill in "home_order_flow_property_data_property_attributes_address_attributes_zipcode" with "72600119"
      And I fill in "home_order_flow_property_data_property_attributes_address_attributes_number" with "22"
      And I fill in "home_order_flow_property_data_property_attributes_address_attributes_complement" with "Casa"
      And I submit the form
    When I fill in "home_order_flow_insured_person_data_insured_person_attributes_name" with "Eric Carlos Silva Ferreira"
      And I select gender
      And I fill in "home_order_flow_insured_person_data_insured_person_attributes_cpf" with "03674784122"
      And I fill my birthdate in "#home_order_flow_insured_person_data_insured_person_attributes_date_of_birth"
      #And I fill in "home_order_flow_insured_person_data_insured_person_attributes_date_of_birth" with "23/04/1993"
      And I select option containing "Analista de sistemas" in the autocomplete
      And I select salary
      And I submit the form
    Then I should see "Para finalizar, insira os dados de pagamento."
