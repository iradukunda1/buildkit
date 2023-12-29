
.PHONY: build run

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

build:
	CGO_ENABLED=0 go build -o bin main.go
run:
	echo "Running..."
	go run main.go

