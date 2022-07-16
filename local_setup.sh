# WSL2 Ubuntu 22.04 workflow with VS Code and SSH keys

# create ssh folder
mkdir .ssh && cd "$_"

# generate 4Kb SSH key with "gitlab" name (we will use it later in config file)
ssh-keygen -t rsa -b 4096 -C "me@myemail.com"

# create config file
nano config

# insert that data into it:
Host gitlab.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/gitlab

# set access rights for SSH folder and keys into it
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*

# copy paste your public key into gitlab preferences/SSH Keys:
cat ~/.ssh/gitlab.pub

# then end up with checking you configuration by git clone
cd && git clone git@gitlab.com:company/group/repo.git

# launch project with VS Code server from WSL2 ubuntu: 
code repo

# happy coding!
