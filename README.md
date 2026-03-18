# Kick Assembler

A containerized version of the [Kick Assembler](http://www.theweb.dk/KickAssembler/).

## Usage
Assemble `myprog.asm` from current directory:
```sh
$ podman run --rm -it -v "$PWD:/src" -w /src localhost/kickassembler myprog.asm
```

## Tags
- `latest` usually refers to the latest supported version of Kick Assembler
