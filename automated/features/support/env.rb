require "Capybara"
require "Capybara/cucumber"
require "rspec"
require "capybara/poltergeist"
require "selenium-webdriver"


# Capybara.default_driver = :chrome
# Capybara.register_driver :chrome do |app|
#   options = {
#       :js_errors => false,
#       :timeout => 360,
#       :debug => false,
#       :inspector => false,
#   }
#   Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end
#
# Capybara.javascript_driver = :chrome

# before_scenario do
#   $PASSWORD = ENV['PASSWORD']
#   $USERNAME = ENV['USERNAME']
# end

$PASSWORD = ENV['PASSWORD']
$USERNAME = ENV['USERNAME']

Capybara.default_max_wait_time=10
Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
      :js_errors => true,
      :timeout => 120,
      :debug => true,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
      :inspector => true,
  }
  Capybara::Poltergeist::Driver.new(app, options)
end