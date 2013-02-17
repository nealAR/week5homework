$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::MyFile do 

	context '::first' do
		it 'retruns the first line of a file' do
			TestGem::MyFile.first('./README.md').should eq %{# TestGem\n}
		end
	end

	context '::last' do
		it 'retruns the last line of a file' do
			TestGem::MyFile.last('./README.md').should eq "\n"
		end	
	end	
end