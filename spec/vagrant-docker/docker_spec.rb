require_relative '../../lib/vagrant-docker/docker'

module VagrantDockerCommand
  describe 'running machine' do
    before do
      @machine = double()
    end

    it 'should be true if machine is running' do
      @machine.stub_chain('state.id').and_return(:running)
      docker = VagrantDockerCommand::Docker.new(@machine)

      docker.machine_running?.should be true
    end
    it 'should be false if machine is not running' do
      @machine.stub_chain('state.id').and_return(:foo)
      docker = VagrantDockerCommand::Docker.new(@machine)

      docker.machine_running?.should be false
    end
  end
end
