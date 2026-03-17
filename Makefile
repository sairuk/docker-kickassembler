all: build

build:
	podman build -t neochrome/kickassembler .

clean:
	podman rmi neochrome/kickassembler
