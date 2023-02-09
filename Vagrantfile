
Vagrant.configure("2") do |config|
  # Set virtual OS 
  config.vm.box = "ubuntu/xenial64"
  #Set IP
  config.vm.network "private_network", ip: "192.168.10.100"
  # Sync app folder
  config.vm.synced_folder "app", "/home/vagrant/app"
  # Provisioning
  config.vm.provision "shell", path: "provision.sh"

  
  
 
end
