# dmr-tools
Set of tools to play with DMR.

## Setup diagram
![DMR Diagram](https://i.ibb.co/k6s1Zs2/DMR-Architecture.png)

## Getting started

First, clone the repo and its submodules.
```
git clone --recurse-submodules git@github.com:jess-sys/dmr-tools.git
cd dmr-tools
```

Then you can edit the configuration in the `config/` folder to suit your needs.

Finally you can start everything by using `make build && make start`. You can start it in the background using `make daemon`.
