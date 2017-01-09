# Getting Started

Starting out with Ansible and yadm.

## Roles

- atom_pkg: Install packages for Atom editor.
- commmon: Set environment variables of system Python to use Ansible.
- go: Install GVM(Go version manager) and go tools
- homebrew: Install system packages and cask packages
- macos: To run macOS specific tasks
  - osx_defaults: Set defaults preferences by defaults command.
- python: Set an environment for system python and to use virtualenv
- repos: Fetch tool repositories(Tmux plugin manager, Terminal.app profiles and private repositories)
- ruby
- yadm: Setup dotfiles manager

## Prepare(Manually)

 First, Update System with App Store.

 For using command-line tools, you should Install Xcode

```shell
sudo xcodebuild -license
```

**To access private repository such as github, should create and register ssh key or access token to your agent(ssh-agent, keychain, etc.)**


## Provisioning

### Clone this repository.

```shell
git clone https://github.com/roothybrid7/local-provisioning.git ~/.provisioning
```

### Install Ansible and Homebrew

To install, run the following command:

```shell
cd ~/.provisioning
make setup
```

### Create Encrypted files

To create a new encrypted data with `sudo_pass` and `dotfiles private repository url`.

```shell
ansible-vault create .private.yml
# (...Edit...)
```

```yaml
---
ansible_become_pass: 'password'
dotfiles_repository: https://github.com/xxxxx/dotfiles.git
ghq_private_repos:
  - repo: https://github.com/xxxxx/xxxxx
git_private_repos:
  - repo: https://github.com/xxxxx/xxxxx.git
    dest: "{{ ansible_user_dir }}/.xxxxx"
```

### Environmental Provision
You run make at the shell prompt:

```shell
make provisioning
```
