
Vagrant.configure("2") do |config|    
  config.vm.define "jenkins" do |jenkins|
    web.vm.box = "hashicorp/bionic64"
    # Let's connect to nginx using private ip
    web.vm.network "private_network", ip: "192.168.10.100"
    # We would like to load this ip using our host machine's browser to view default nginx page
    config.hostsupdater.aliases = ["jenkins.local"]
    # If the plugin is installed correctly and file is updated with vagrant destroy then we should be able to see nginx page in the browser with http://jenkins.local
    # Choosing a file or folder to sync
    # Automatically running the install script on initial setup
    web.vm.provision "shell", path: "source/provision_jenkins.sh"
  end
end