.PHONY: install
target/irisqualifier-method:
	pex . --entry-point method --requirement requirements.txt --output-file target/irisqualifier-method
install: target/irisqualifier-method
	mkdir --parents /usr/local/bin
	cp --force target/irisqualifier-method /usr/local/bin
	chmod 755 /usr/local/bin/irisqualifier-method
