# install oh-my-zsh and spaceship theme + jetbrains font (full manual)
https://garrytrinder.github.io/2020/12/my-wsl2-windows-terminal-setup

# jetbrains mono fonts
https://www.jetbrains.com/lp/mono

# windows terminal fonts settings
"fontFace": "JetBrains Mono",
"fontSize": 12

# install zsh and switch to
sudo apt install zsh
chsh -s $(which zsh)

# install spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
## I set ZSH_THEME="spaceship" and uncommented the line in .zshrc.

## I added SPACESHIP_PROMPT_ORDER array to .zshrc above source $ZSH/oh-my-zsh.sh line.
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  dotnet        # .NET section
  ruby          # Ruby section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

## plugins download and install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## I added zsh-autosuggestions to the plugins array in .zshrc.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# I set COMPLETION_WAITING_DOTS="true" and uncommented the line in .zshrc
COMPLETION_WAITING_DOTS="true"

# remove jumping to black screen ( LESS behaviour )
# https://superuser.com/questions/1698521/zsh-keep-all-command-outputs-on-terminal-screen
nano ~/.oh-my-zsh/custom/config.zsh

# write to the config.zsh next code snippet
# https://superuser.com/questions/1698521/zsh-keep-all-command-outputs-on-terminal-screen
export PAGER=""
export LESS="-F -X -R"

# zsh command not found
# https://stackoverflow.com/questions/18428374/commands-not-found-on-zsh

nano ~/.zshrc
export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}

# start modern browsers from wsl2 zsh terminal
alias chrome="/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe"
alias edge="/mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe"
