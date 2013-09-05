require 'vagrant-docker/version'

module VagrantDockerCommand
  class Plugin < Vagrant.plugin('2')

    name 'Vagrant Docker Command'

    command 'docker' do
      require_relative 'vagrant-docker/command'
      DockerCommand
    end

  end
end
