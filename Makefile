# Makefile
SETUP_DIR=$$(pwd)/setup

.PHONY: all
all: setup

.PHONY: setup
setup:
	@$(SETUP_DIR)/install_ansible.sh

.PHONY: prepare
prepare:
	@$(SETUP_DIR)/install_command_line_tool.sh
