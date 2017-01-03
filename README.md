# Getting Started

Starting out with Ansible and yadm.

## Prepare(Manually)

 First, Update System with App Store.

 For using command-line tools, you should Install Xcode

```shell
sudo xcodebuild -license
```

## Provisioning

### Clone this repository.

```shell
git clone https://github.com/roothybrid7/local-provisioning.git ~/.provisioning
```

### Install Ansible

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
```

### Environmental Provision
You run make at the shell prompt:

```shell
make provisioning
```

* Install Homebrew
* Setup OSX Defaults on macOS
* Install GVM(Go version manager) for application.
* Install ATOM packages
* Clone and setup dotfiles by yadm(Yet Another Dotfiles Manager)
