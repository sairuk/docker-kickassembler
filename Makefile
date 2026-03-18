all: build

build:
	podman build -t kickassembler .

clean:
	podman rmi kickassembler
