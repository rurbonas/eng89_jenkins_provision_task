# This provisioning file sets up a Jenkins instance
# Updating the built in repos
sudo apt-get update -y
sudo apt-get upgrade -y

# Installing Java 11 as as requirement for Jenkins
sudo apt install openjdk-11-jdk -y

# Adding the Jenkins repo to our sources
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
    
# Installing Jenkins
sudo apt-get update -y
sudo apt-get install jenkins -y

# Starting Jenkins
sudo systemctl start jenkins