SHELL:=/usr/bin/env bash

LOG_INFO=$(shell date +"%H:%M:%S") \e[0;34mINFO\e[0m
LOG_ERROR=$(shell date +"%H:%M:%S") \e[1;31mERROR\e[0m
LOG_WARNING=$(shell date +"%H:%M:%S") \e[0;33mWARNING\e[0m
LOG_SUCCESS=$(shell date +"%H:%M:%S") \e[0;32mSUCCESS\e[0m
TUFETCH=`pwd`/src/tufetch
BIN=/usr/local/bin/

.DEFAULT_GOAL := install

install:
	@echo -e "$(LOG_INFO) Under dev 👷🛑..."

clean:
	@echo -e "$(LOG_INFO) Cleaning $(BIN)tufetch (needs permission)..."
	@test -f "$(BIN)tufetch" && sudo rm $(BIN)tufetch || echo -e "$(LOG_SUCCESS) Already clean"

link:
	@echo -e "$(LOG_WARNING) Making the script executable..."
	@chmod +x src/tufetch
	@echo -e "$(LOG_INFO) Linking tufetch..."
	@sudo ln -s `pwd`/src/tufetch $(BIN) && echo -e "$(LOG_SUCCESS) Linked successfully!" || echo -e "$(LOG_ERROR) Failed to link tufetch"

