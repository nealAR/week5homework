$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)

require 'version'
require 'hello'
require 'yaml'

module TestGem

  @default_file_name 
  @supported_types

  puts "module TestGem defined"

  def self.init_config
    data = {:default_file_name => "default.txt", 
            :supported_types => [:key => 'txt', :key2 => 'pdf']}

    File.open('program.config', "w") do |f|
      YAML.dump(data, f)
    end
  end  

  class MyFile 

    def initialize
      default_file_name = 'default'
      supported_types = ['txt', 'pdf']
    end 
  	
  	def self.first(filename)
  		File.open(filename, "r") {|f| f.readline}
  	end
  	
  	def self.last(filename)
  		File.open(filename, "r")[-1]
  	end	
  end

  class MyError < StandardError
    puts "Standard Error"
  end	
end