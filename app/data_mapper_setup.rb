env = ENV["RACK_ENV"] || "development"

require_relative 'models/flip.rb'
require_relative 'models/user.rb'

DataMapper.setup(:default, "postgres://localhost/flipper_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!