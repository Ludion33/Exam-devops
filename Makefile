
start:
	go run

test:
	cd handler && go test && cd ../

build: test
	go build

infra:
	cd provisions && terraform apply && cd ../
