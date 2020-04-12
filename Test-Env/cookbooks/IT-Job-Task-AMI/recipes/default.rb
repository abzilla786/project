
# Cookbook:: IT-Job-Task
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
apt_update 'update_sources' do
  action :update
end

package 'python3-pip'

remote_directory '/home/ubuntu/app' do
  source 'app'
  action :create
end

bash 'install_requirements' do
  code <<-EOH
    sudo pip3 install -r /home/ubuntu/app/requirements.txt
  EOH
end

directory '/home/ubuntu/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'
end

bash 'adding_keys' do
  code <<-EOH
    wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
    EOH
end



bash 'echo_deb' do
  code <<-EOH
    echo deb http://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
    EOH
end



bash 'install_default_jre' do
  code <<-EOH
    sudo apt-get -y install default-jre
    EOH
end



bash 'install_default_jdk' do
  code <<-EOH
    sudo apt-get -y install default-jdk
    EOH
end



bash 'installing_jenkins' do
  code <<-EOH
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    EOH
end



bash 'sudo_jenkins' do
  code <<-EOH
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    EOH
end



bash 'apt_update' do
  code <<-EOH
    sudo apt-get update -y
    EOH
end



bash 'jenkins_install' do
  code <<-EOH
    sudo apt-get install jenkins -y
    EOH
end
