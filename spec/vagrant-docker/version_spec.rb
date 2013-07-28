require_relative '../../lib/vagrant-docker/version'

module VagrantDockerCommand
  describe 'version' do
    it 'must be set' do
      version = VagrantDockerCommand::VERSION
      version.should_not == nil
    end
  end
end
