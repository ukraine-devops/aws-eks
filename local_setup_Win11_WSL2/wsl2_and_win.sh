# to open WSL2 file system from Windows

# Just type in the Windows explorer: 
\\wsl$\

# to copy files from Windows in WSL terminal (between SSH folders as example):
cp -r /mnt/c/Users/levpa/.ssh/ ~/.ssh/

# to restart WSL2 just close - open terminal window or use these command from powershell
wsl --shutdown

# boot up distro with new terminal session
wsl

# you can always switch to bash
exec bash

# or to zsh
exec zsh

# switch to any shell
chsh -s $(which "SHELL NAME")