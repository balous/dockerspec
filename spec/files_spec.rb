require 'dockerspec'

describe 'files' do
	describe file('/run_tests') do
		it {should be_executable}
	end

	describe file('/usr/lib/ruby/vendor_ruby/dockerspec.rb') do
		it {should be_file}
	end
end
