
# Cookbook:: IT-Job-Task
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
apt_update 'update_sources' do
  action :update
end

package 'python3-pip'

template '/home/ubuntu/requirements.txt' do
  source 'requirements.txt'
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
