# frozen_string_literal: true

require 'bundler/setup'
require 'forecaster'
require 'rspec-power_assert'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  RSpec::PowerAssert.example_assertion_alias :assert
  RSpec::PowerAssert.example_group_assertion_alias :assert
end
