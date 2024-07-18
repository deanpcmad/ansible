# My Ansible Playbooks

This repo contains a collection of Ansible playbooks I use to configure my machines.

## Initial Install

```bash
sudo apt install -y python3-virtualenv git

virtualenv ~/.local
~/.local/bin/pip3 install ansible

git clone https://github.com/deanpcmad/ansible.git
cd ansible

~/.local/bin/ansible-galaxy install -r requirements.yml
```

## Dev Machines, running on Debian 12

Install Debian 12 with KDE.

This Ansible playbook will install the following:

- Removes Firefox ESR
- Sets up the Mozilla repo and installs Firefox from there
- Installs Docker
- Installs VSCode
- Installs Sublime Merge
- Installs Tailscale
- Installs GitHub CLI
- Installs Kopia & Kopia UI
- Installs 1Password
- Installs Mise with Ruby 3.3.4, Node 20.20.1 & Bun
- Installs and configures Flatpak
- Installs other apps, using Flatpak, such as Spotify & Discord
- Installs Fish shell and sets it as the default shell
- Installs [Starship Prompt](https://starship.rs/)

```bash
# -K to enter sudo password
~/.local/bin/ansible-playbook dev.yml -K
```
