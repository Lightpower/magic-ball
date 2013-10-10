require "yaml"
require "active_record"

if ENV['DATABASE_URL']
  ActiveRecord::Base.establish_connection
else
  database_config = YAML.load_file(File.join(File.dirname(__FILE__), "database.yml"))
  ActiveRecord::Base.establish_connection(database_config[ENV["RACK_ENV"] || ENV["RAILS_ENV"] || "development"])
end

Dir["models/*.rb"].each do |file|
  require file.chomp(".rb")
end