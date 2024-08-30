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
	rm -rf /home/wrkt/Projects/pki-project/root-ca/ca_data
	rm -rf /home/wrkt/Projects/pki-project/signer/signer_data
