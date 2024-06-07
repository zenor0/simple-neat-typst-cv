PWD = $(shell pwd)
HOME = $(shell echo $$HOME)
TYPST_PACKAGES = $(HOME)/snap/typst/5/.cache/typst/packages

local-setup:
	rm -rf $(TYPST_PACKAGES)/local/simple-neat-cv
	mkdir -p $(TYPST_PACKAGES)/local/simple-neat-cv
	ln -s $(PWD) $(TYPST_PACKAGES)/local/simple-neat-cv/0.1.0