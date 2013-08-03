require 'active_support'
require 'active_record'
require 'active_support/deprecation'
require 'action_view'
require 'rspec/rails/adapters'
require 'rspec/rails/example/rails_example_group'
require 'rspec/rails/matchers'
require 'rspec/rails/example/view_example_group'
require 'rspec/rails/mocks'

plugin_spec_dir = File.dirname(__FILE__)

RSpec.configure do |c|
  c.include RSpec::Rails::ViewExampleGroup, :type => :view
end


# Classes used in the tests to mock a model
class Boy
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def id
    return 5
  end

  def name
    return "Dick"
  end
end

class Girl
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def id
    return 6
  end

  def name
    return "Jane"
  end
end

class Foo
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def persisted?
    false
  end

  # Mocking an attribute
  def ownable

  end

  # Mocking an attribute
  def att1

  end
end