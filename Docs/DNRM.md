# Nixos Config (Home-Manager With Flakes, with Flatpaks)
This is my NixOs declarative config while still being on NixOs. 

## Layout

## How To Get Nixed Installed
### Option A - NixOs Distro

  1. Firstly, get the iso (minimal) from its official site, prepare a ventoy on a thumbdrive. 
  2. Next Up



### Setting Up Home Manager (Standalone) 
  1. Get the nix channel
  
      ```bash
        nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.11.tar.gz 
      ```
  
  2. Updating the channel
  
        ```bash
          nix-channel --update
        ```
  3.  Installing Home Manager

        ```bash
          nix-shell '<home-manager>' -A install
        ```
## Managing Other Packages, Programs & Services With Nix
### Flatpak Package Manager

1. Enabling Flatpak in configuration.nix, which also naturrally installs it.
      ```nix
        service.enable.flatpak = true;
      ```
2. Running this command to let it access flathub app store.
      ```bash
        flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
      ```

## Helpful Residual Nix Commands
1. Switching generations after a rebuild.
      ```bash
        sudo nixos-rebuild switch
      ```
2. With my special setup
      ```bash
        sudo nixos-rebuild switch --flake .#mesh
      ```
