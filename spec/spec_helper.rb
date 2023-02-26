# frozen_string_literal: true

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation

  ENV['TESTING'] = 'true'
end
