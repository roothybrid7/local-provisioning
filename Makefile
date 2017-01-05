# Makefile
SETUP_DIR=$$(pwd)/setup

.PHONY: all
all: prepare setup

.PHONY: prepare
prepare:
	@$(SETUP_DIR)/install_command_line_tool.sh

.PHONY: setup
setup:
	@$(SETUP_DIR)/install_python_user_site.sh
	@$(SETUP_DIR)/install_ansible.sh
	@$(SETUP_DIR)/install_homebrew.sh

.PHONY: provisioning
provisioning:
	@$(SETUP_DIR)/play_ansible.sh
