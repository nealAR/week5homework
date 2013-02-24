$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem do

	context 'instance' do

	    it {should be_a Module}	

  		it 'creates a config file' do
  		  subject.init_config
  		  File.open("program.config", "r") { |io| io.readline }.should eq "---\n"	
  		end	

  	 end

end