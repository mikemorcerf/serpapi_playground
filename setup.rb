require 'debug'
require 'dotenv'
Dotenv.load

Dir.glob(File.join(__dir__, 'engine/**/*.rb')).each do |file|
  next unless file.end_with?('.rb') && file != 'scrapper.rb'

  require_relative file
end

Dir.glob(File.join(__dir__, 'raw/**/*.rb')).each do |file|
  next unless file.end_with?('.rb') && file != 'scrapper.rb'

  require_relative file
end

[:search_metadata]