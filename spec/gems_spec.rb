require 'dockerspec'

describe 'gems' do
	['serverspec', 'docker-api'].each do |gem|
		describe package(gem) do
			it {should be_installed.by('gem')}
		end
	end
end
