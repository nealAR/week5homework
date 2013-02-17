$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem do

	context 'instance' do

  		it { should be_a Module }

  	 end

end