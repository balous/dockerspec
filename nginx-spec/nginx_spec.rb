require 'dockerspec'

describe 'nginx' do
	describe process('nginx') do
		it {should be_running}
	end

	describe port('80') do
		it {should be_listening}
	end
end
