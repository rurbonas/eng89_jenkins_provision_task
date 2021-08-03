# Jenkins Provision
running a Jenkins instance on our own Vagrant machine.

- Make sure Vagrant and Virtual Box are installed as these are required to run the file
- Clone this repository
- Run the Vagrant file!
- Navigate to 192.168.10.100:8080

To find the initial admin password to complete the setup, run this command in ssh:
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

More info can be found on the official documentation:
https://www.jenkins.io/doc/book/installing/linux/

