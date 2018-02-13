Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 8000, host: 8000, auto_correct: true
  config.vm.network "forwarded_port", guest: 27017, host: 27017, auto_correct: true
  config.vm.synced_folder "../symfony4-mongodb-jwt-starter", "/home/ubuntu/symfony4-mongodb-jwt-starter"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  config.vm.provision "shell", path: "install.sh", privileged: false
end