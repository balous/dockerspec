require 'docker'
require 'serverspec'

set :backend, :docker
set :docker_container, ENV['container']
set :docker_url, ENV['docker_url']
