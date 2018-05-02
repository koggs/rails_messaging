# frozen_string_literal: true

require File.expand_path('boot', __dir__)

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'


Bundler.require(*Rails.groups)

module Mailboxer
  class Application < Rails::Application
    config.load_defaults 5.1
    config.action_mailer.default_url_options = { host: 'ca-mailboxer.herokuapp.com' }

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.system_tests false
    end
  end
end
