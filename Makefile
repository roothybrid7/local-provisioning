# Makefile
SETUP_DIR=$$(pwd)/setup

.PHONY: all
all: prepare setup provision

.PHONY: prepare
prepare:
	@$(SETUP_DIR)/install_command_line_tool.sh

.PHONY: setup
setup:
	@$(SETUP_DIR)/install_ansible.sh

.PHONY: provision
provision:
	@$(SETUP_DIR)/play_ansible.sh
