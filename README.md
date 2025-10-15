# agentic-container

A container-based environment for safely using agentic AI (specifically `goose`).


## Quickstart

You'll need Docker Desktop & [just](https://just.systems/).

```shell
$ git clone ...
$ cd agentic-container

$ just setup

# Customize your new `.env` file.

$ just build

$ just shell

[remote] $ goose configure
# `Configure Provider`, setup `Anthropic`, don't save to keyring.
[remote] $ goose configure
# `Add Extension`, `Built-in Extension`, `Computer Controller`, `300`
[remote] $ goose configure
# `Add Extension`, `Built-in Extension`, `Developer Tools`, `300`
```


## Author

Daniel Lindsley


## License

New BSD
