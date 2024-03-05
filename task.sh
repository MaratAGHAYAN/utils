
# Add user git_task
sudo adduser git_task

# Create SSH directory and authorized_keys file
sudo mkdir /home/git_task/.ssh
sudo chmod 700 /home/git_task/.ssh
sudo touch /home/git_task/.ssh/authorized_keys
sudo chmod 600 /home/git_task/.ssh/authorized_keys
sudo chown -R git_task:git_task /home/git_task

# Create project directory and initialize git bare repository
sudo mkdir -p /srv/git_task/project.git
sudo chown -R git_task:git_task /srv/git_task
cd /srv/git_task/project.git
sudo -u git_task git init --bare /srv/git_task/project.git
