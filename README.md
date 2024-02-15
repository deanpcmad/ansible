# My Ansible Playbooks

This repo contains a collection of Ansible playbooks I use to configure my machines.

## Initial Install

```bash
apt install -y python3-virtualenv git

virtualenv ~/.local
~/.local/bin/pip3 install ansible

git clone https://github.com/deanpcmad/ansible.git
cd ansible

~/.local/bin/ansible-galaxy install -r requirements.yml
```

## Dev Machines, running on Debian 12

- Removes Firefox ESR and installs Firefox from the unstable repo.
- Installs Docker
- Installs VSCode
- Installs Sublime Text & Sublime Merge
- Installs Tailscale
- Installs RBenv and installs Ruby 3.2.2 as part of that
- Installs and configures Flatpak
- Installs other apps such as 1Password, Spotify & Discord
- Installs Fish shell and sets it as the default shell

```bash
# -K to enter sudo password
~/.local/bin/ansible-playbook dev.yml -K

# install fnm
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.config/fish/conf.d/fnm.fish
fnm install 18.17.0
npm install -g npm
npm install -g yarn
```
