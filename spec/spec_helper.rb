require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'braintree'
require 'active_record'
require 'active_record/fixtures'
require 'redline'
require 'redline/orm/active_record'
require 'active_support'
require 'spec'
require 'spec/autorun'

# establish the database connection
ActiveRecord::Base.configurations = YAML::load(IO.read(File.dirname(__FILE__) + '/db/database.yml'))
ActiveRecord::Base.establish_connection('active_record_merge_test')

# load the schema
$stdout = File.open('/dev/null', 'w')
load(File.dirname(__FILE__) + "/db/schema.rb")
$stdout = STDOUT

# load the models
require File.dirname(__FILE__) + '/db/models'

# Fake Braintree, for stubbing
module Braintree
	class Customer
	end
end

Spec::Runner.configure do |config|
  
end
