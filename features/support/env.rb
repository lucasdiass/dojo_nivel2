require 'rspec'
require 'cucumber' 
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry' 
require 'site_prism' 
require 'faker' 

Faker::Config.locale = 'pt-BR' 

#Configurando o driver do capybara

Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrão e site de acesso
Capybara.configure do |config|
    Capybara.default_driver = :selenium
    config.app_host ='https://demo.suiteondemand.com' 
end 

#timeout padrão na execução
Capybara.default_max_wait_time = 10

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize