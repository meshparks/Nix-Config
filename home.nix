{ pkgs, ... }: {
  home.username = "mesh";
  home.homeDirectory = "/home/mesh";

  # Required by Home Manager for state compatibility
  home.stateVersion = "24.11";

  # User level packages
  home.packages = with pkgs; [
    # Golang
    go

    # Lua
    lua

    # Shell
    zsh
    fish
    eza
    zoxide
    fzf
    curl
    git
    bat
    wget

    # Python
    python3

    # Rust Specific
    cargo
    rustc
    rust-analyzer
    clippy
  ];

  # Zsh config
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/mesh/nixos-config/#mesh";
    };
  };

  # Git Jujutsu config
    programs.jujutsu = {
      enable = true;
      settings = {
        user = {
          name = "meshpark";
          email = "meshpark@proton.me";
        };
        ui.default-command = "log";
      };
    };

  # Does exactly that
  programs.home-manager.enable = true;
}
