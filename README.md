Dockerspec
==========

This repo contains a docker image used to run serverspec tests against other docker images.

### Usage
	$ docker run -ti [-e force_run=true] -w /work -v "$(pwd):/work" -v '/var/run/docker.sock:/var/run/docker.sock' docker-registry.samepage.in:5000/dockerspec

Use force_run=true for images whose entrypoint stopps immadiately (i.e. this one). This overrides default entrypoint so that image runs (forever) and is possible to test.

## Writing tests
See spec directory for example implementation.
