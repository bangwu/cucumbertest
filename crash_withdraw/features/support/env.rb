require File.join(File.dirname(__FILE__), '..', '..', 'lib' , 'nice_bank')
require File.join(File.dirname(__FILE__), '..', '..', 'lib' , 'models')
require 'capybara/cucumber'
Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test