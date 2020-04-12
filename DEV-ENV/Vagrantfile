
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "It_Jobs_Watch_Data_Package-master", "/home/ubuntu/starter-code"
  config.vm.provision "shell", path: "provisions.sh"
end
