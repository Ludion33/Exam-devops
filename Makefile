start:
	go run main.go

test:
	cd handler && go test && cd ../

build: test
	go build

infra:
	cd provisions && terraform apply && cd ../

