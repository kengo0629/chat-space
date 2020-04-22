class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  module ChatSpace
    class Aplication < Rails::Application
      config.generators do |g|
        g.stylesheets false
        g.javascripts false
        g.helper false
        g.test_framework false
      end
    end
  end
end
