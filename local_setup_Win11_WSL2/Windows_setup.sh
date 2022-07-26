# automatic wsl2 install ( original Linux under the hood of Windows OS )
wsl --install
# or for particular distribution
wsl --list --online
# Debian          Debian GNU/Linux
# kali-linux      Kali Linux Rolling
# openSUSE-42     openSUSE Leap 42
# SLES-12         SUSE Linux Enterprise Server v12
# Ubuntu-20.04    Ubuntu 20.04 LTS
wsl --install -d kali-linux 
# or you can install any other version from Microsoft Store (nice installation with GUI)

# install the Chrome browser, we use "Developer Tools" and extensions from Chrome and Edge browsers
https://www.google.com/intl/en_us/chrome/

# main tool in our collection is VS Code, feel free to use best plugins from this cool IDE
https://code.visualstudio.com/download

```yaml
vs-code-modules:
    .ENV Selector
    Docker
    GitLab Workflow
    GitLens
    Helm Intellisense
    Kubernetes
    Path Intellisense
    YAML
```

# install Docker Desktop
https://www.docker.com/products/docker-desktop/

# install Lens for K8S
https://k8slens.dev/

# you can use .kube\config from WSL2 Ubuntu:
# go to K8S Preferences -> Kubernetes -> Kubeconfig Syncs
\\wsl.localhost\Ubuntu-22.04\home\<username>\.kube\config

# if you need to test API or services, I would recommend the Postman app
https://www.postman.com/downloads/

# my personal recommendation for intelligent translations
https://www.deepl.com/en/app/

# windows terminal: we can use it as tmux analog: wsl2, powershell, cmd, git bash, cloud shell...
https://docs.microsoft.com/en-us/windows/terminal/install