module VagrantDockerCommand

  class DockerCommand < Vagrant.plugin('2', 'command')
    attr_accessor :env

    def execute

      opts = OptionParser.new do |o|
        o.banner = 'Usage: vagrant docker COMMAND "[ARGS]"'
      end
      argv = parse_options(opts)

      command = "docker #{argv.join(' ')}"

      machine = @env.machine(:default, :virtualbox)
      if machine.state.id != :running
        @env.ui.error('Machine must be running.')
        return 1
      end


      machine.communicate.execute(command) do |type, data|
        @env.ui.info(data)
      end

      return 0
    end
  end

end