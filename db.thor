$:.unshift File.dirname(File.expand_path(__FILE__))

require "logger"
require "config/database"

class Db < Thor
  desc "create", "Create database"
  def create
    config = ActiveRecord::Base.connection_config.dup

    begin
      ActiveRecord::Base.establish_connection(config.merge(database: 'postgres', schema_search_path: 'public'))
      ActiveRecord::Base.connection.create_database(config[:database], config.merge(encoding: "utf8"))
      ActiveRecord::Base.establish_connection(config)
    rescue Exception => e
      $stderr.puts e, *(e.backtrace)
      $stderr.puts "Couldn't create database for #{config.inspect}"
    end
  end

  desc "migrate", "Migrate the database"
  method_option :version, desc: "migrate to version", type: :numeric, default: nil
  method_option :verbose, desc: "verbose", type: :boolean, default: false
  def migrate
    ActiveRecord::Base.logger = ::Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = options[:verbose]
    ActiveRecord::Migrator.migrate("db/migrate", options[:version])
  end

  desc "rollback", "Rolls the schema back to the previous version"
  method_option :step, desc: "specify number of steps", type: :numeric, default: 1
  def rollback
    ActiveRecord::Migrator.rollback(ActiveRecord::Migrator.migrations_paths, options[:step])
  end

  desc "drop", "Drops the database for the current env"
  def drop
    config = ActiveRecord::Base.connection_config.dup

    begin
      ActiveRecord::Base.establish_connection(config.merge(database: 'postgres', schema_search_path: 'public'))
      ActiveRecord::Base.connection.drop_database config[:database]
    rescue Exception => e
      $stderr.puts "Couldn't drop #{config['database']} : #{e.inspect}"
    end
  end
end