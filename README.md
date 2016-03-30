Dockerspec
==========

This repo contains a docker image used to run serverspec tests against other docker images. The image is designed to start another
image and run tests against it. By default, image is automatically built from **./Dockerfile** - this behavior can be overriden 
by **--image** and **--container** options. Default test location is **./spec**.

## Usage
	$ docker run -t --rm -w /work -v "$(pwd):/work" -v '/var/run/docker.sock:/var/run/docker.sock' samepagelabs/dockerspec [options]

Options:
*  **-d, --init-delay=&lt;delay&gt;** Wait number of seconds before running tests (default: 0)
*  **-r, --force-run**                Override entrypoint for command only images that exit immediately
*  **-i, --image=&lt;id&gt;**         Start already built image
*  **-c, --container=&lt;id&gt;**     Connect to running container
*  **-u, --docker-url=&lt;url&gt;**   Override default docker api endpoint
*  **-o, --rspec-opts=&lt;opts&gt;**  Override default rspec opts (default: --format=doc --color)
*  **-s, --spec-path=&lt;path&gt;**   Path to spec files (default: ./spec)
*  **-h, --help**                     Show this message


## Writing tests
See **spec** directory for example implementation. See [serverspec homepage](http://serverspec.org/) for detailed explanation of serverspec capabilities.

Following example checks nginx process status:
```ruby
require 'dockerspec'

describe process('nginx') do
	it {should be_running}
end
```

You are limited a bit by the content of the container being tested. For example, following test causes false positive without **netstat** tool being present
in the container:

```ruby
describe port(80) do
	it {should be_listening}
end
```



