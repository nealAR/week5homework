$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'

module TestGem

  puts "module TestGem defined"

  class MyFile
  	
  	def self.first(filename)
  		File.open(filename, "r") {|f| f.readline}
  	end
  	
  	def self.last(filename)
  		File.open(filename, "r")[-1]
  	end	
  end	
end