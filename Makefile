## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## run/server: run the cmd/bysykkel-server REST API application
.PHONY: run/server
run/server:
	go run ./cmd/web
	sleep 1 && open "https://localhost:4000"

## db/connect: connect to the local MySQL database
.PHONY: db/connect
db/connect:
	mysql -u root -p
