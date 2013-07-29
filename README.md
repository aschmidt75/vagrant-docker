vagrant-docker
==============

This is a simple Vagrant Command Plugin for accessing docker within a vm. Currently only the :default vm is supported.


##Dependencies##
 * Vagrant
 * Bundler
 * [Docker](http://www.docker.io/)

##Examples##

####Build gem####
```
$ cd vagrant-docker
$ bundle exec rake build
vagrant-docker 0.0.1 built to pkg/vagrant-docker-0.0.1.gem.
$ bundle exec rake install
vagrant-docker 0.0.1 built to pkg/vagrant-docker-0.0.1.gem.
vagrant-docker (0.0.1) installed.
```

####Install plugin to a vagrant environment####
```
$ cd ..
$ /Applications/Vagrant/bin/vagrant plugin install vagrant-docker/pkg/vagrant-docker-0.0.1.gem
Installing the 'ovm_temp/projects/vagrant-docker/pkg/vagrant-docker-0.0.1.gem' plugin. This can take a few minutes...
Installed the plugin 'vagrant-docker (0.0.1)'!
```

Write a vagrant file that sets up a docker environment, or get the one from dotcloud/docker: https://github.com/dotcloud/docker/blob/master/Vagrantfile

####Start a vm, start docker containers####
```
$ /Applications/Vagrant/bin/vagrant docker ps
ID
                  IMAGE               COMMAND             CREATED             STATUS              PORTS
$ /Applications/Vagrant/bin/vagrant docker pull busybox
...

$ /Applications/Vagrant/bin/vagrant docker "run -d -t -i busybox /bin/sh"
b338e86f5c97

$ /Applications/Vagrant/bin/vagrant docker ps
ID                  IMAGE               COMMAND             CREATED             STATUS              PORTS
b338e86f5c97        busybox:latest      /bin/sh             9 seconds ago       Up 9 seconds 
```


##Todos##
 * tests
 * implement multi vm environment support
 * additional commands and summary formatting for commands like ps, images, ...
 * docker provisioner
 * integrate w/ dockermix

##LICENSE##

MIT License, (C) 2013 Andreas Schmidt. See LICENSE file for details.
