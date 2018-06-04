require 'spec_helper'

describe file('/opt/sonarqube/docker-compose.yml') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 644 }
end

describe file('/opt/sonarqube/docker-compose.yml') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 644 }
end

service_startup_file = '/lib/systemd/system/sonarqube.service'
if os[:family] =~ /ubuntu|debian/ and os[:release] == '14.04'
    service_startup_file = '/etc/init/sonarqube.conf'
elsif os[:family] =~ /centos|redhat/
  service_startup_file = '/usr/lib/systemd/system/sonarqube.service'
end

describe file(service_startup_file) do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 644 }
end

describe service('sonarqube') do
  it { should be_running }
end

describe docker_container('db') do
  it { should be_running }
end

describe docker_container('sonarqube') do
  it { should be_running }
end
