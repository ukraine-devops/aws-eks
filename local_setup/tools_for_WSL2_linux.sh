# This template was tested on Ubuntu 22.04 in July 2022.
# remove password request for current user
sudo visudo

# https://linuxhint.com/setup-sudo-no-password-linux/
# add that line to the end of file:
user_name ALL=(ALL) NOPASSWD:ALL

# install Node version manager from the script, pay attention to the version number! 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# reopen terminal and install the correct version of Node
nvm install 16

# output must be like that:
# Downloading and installing node v16.16.0...

# check Docker with command down below (should work, if Docker Desktop already installed and launched)
docker run hello-world

# Ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt -y update
sudo apt -y install ansible
ansible --version

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client --output=yaml

# Install Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Installing Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
aws --version

# use Git aliases for velocity!
# open file for aliases with command
git config --global -e

# copy aliases from the gist
https://gist.github.com/levpa/3658c24beb62acd2dcd9f92fc79c7d99

# add branch identation for bash terminal (put snippet into ~/.bashrc):

# change that snippet without branch:
if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[33m\]\$(show_git_branch)\[\033[00m\]$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w \$(show_git_branch)\$ "
fi

# to that with yellow branch color:
show_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[33m\]\$(show_git_branch)\[\033[00m\]$ "
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w \$(show_git_branch)\$ "
fi
