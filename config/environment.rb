require "bundler/setup"
require 'yaml'
require 'active_record'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/tvshows.db'
})

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

=begin
show1= Show.new("Parks and rec", "Netflix", "Wednesday", 10)
show2= Show.new("American Horror Story", "FX", "Tuesday", 10)
show3= Show.new("New Girl", "FX", "Monday", 7)
binding.pry
=end