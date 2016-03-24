Dockerspec
==========

This repo contains a docker image used to run serverspec tests against other docker images.

### Usage
	$ docker run -ti -w /work -v "$(pwd):/work" -v '/var/run/docker.sock:/var/run/docker.sock' docker-registry.samepage.in:5000/dockerspec

## Writing tests
See spec directory for example implementation.
