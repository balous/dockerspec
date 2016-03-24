require 'dockerspec'

describe 'packages' do
	['ruby', 'docker-engine'].each do |package|
		describe package(package) do
			it {should be_installed}
		end
	end
end
