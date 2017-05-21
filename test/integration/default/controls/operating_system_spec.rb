control 'operating_system' do
  describe command('lsb_release -a') do
    its('stdout') { should match (/Ubuntu/) }
    its('stdout') { should match (/zesty/) }
  end

  describe package('curl') do
    it { should be_installed }
  end
end
