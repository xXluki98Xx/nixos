# NixOS Configuration

## Build System

```bash
sudo nixos-rebuild switch --flake .#framework13
```

## Build Home

```bash
home-manager switch --flake .#lramm
```

## Update Flake

```bash
nix flake update
```