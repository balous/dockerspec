require 'dockerspec'

describe 'files' do
	describe file('/run_tests') do
		it {should be_executable}

		describe command('/run_tests --help') do
			its(:stdout) {should match /--help/}
		end
	end

	describe file('/usr/lib/ruby/vendor_ruby/dockerspec.rb') do
		it {should be_file}
	end
end
