require 'minitest'
require 'minitest/autorun'

Dir[File.join(__dir__, "../lib/**/*.rb")].each do |file|
  require file
end
