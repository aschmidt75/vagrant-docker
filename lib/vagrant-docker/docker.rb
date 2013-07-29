module VagrantDockerCommand
  class Docker
    def initialize(machine)
      @machine = machine
    end

    def machine_running?
      @machine.state.id == :running
    end
  end
end
