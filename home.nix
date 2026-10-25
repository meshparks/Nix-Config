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

  # Does exactly that
  programs.home-manager.enable = true;
}
