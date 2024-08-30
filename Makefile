FQDN ?= example.local

.PHONY: all build up clean

all: build up

build:
	docker-compose build --no-cache

up:
	FQDN=$(FQDN) docker-compose up

clean:
	docker-compose down
	docker-compose rm -f 
	sudo rm -rf ./root-ca/ca_data
	sudo rm -rf ./signer/signer_data
