# Dev Environments with Nix

This repository contains reusable `flake.nix` files to quickly set up isolated development environments for various programming languages and toolchains using [Nix](https://nixos.org/).

## Available Environments

- [`rust/`](./rust)       — Rust development environment with `cargo`, `rust-analyzer`, and `openssl` support
- [`python/`](./python)   — Python 3.14 environment with `uv`, `mypy`, compiler tools
- [`haskell/`](./haskell) — Haskell environment with `ghc`, `cabal`, `haskell-language-server` and `ormolu`

## Getting Started

### 1. Install Nix

Follow the instructions at [nixos.org/download.html](https://nixos.org/download.html)

### 2. Enter an Environment

Clone the repo and enter any environment:

```bash
git clone https://github.com/zaarov/NixDevEnviroments.git
cd dev-environments/rust
nix develop
```

### Why Use This?

- Language-specific tools pre-installed

- Reproducible, isolated environments

- No need for global installs
