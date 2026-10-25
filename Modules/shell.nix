{ config, pkgs, ...}:
{
  # services.openssh = {
  #   enable = true;
  #   settings = {
  #     PasswordAuthetication = false;
  #     PermitRootLogin = "no";
  #   };
  #   users.user.meshparks.openssh.authorizedKeys.keys= [
  #     ""
  #   ];
  # };

  # Zsh config
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/mesh/nixos-config/#mesh";
    };
  };

  # Git Config
  programs.git = {
    enable = true;
    config = {
      init = {
        defaultBranch = "main";
      };
    };
  };

  # # Git Jujutsu config
  #   programs.jujutsu = {
  #     enable = true;
  #     settings = {
  #       user = {
  #         name = "meshpark";
  #         email = "meshpark@proton.me";
  #       };
  #       ui.default-command = "log";
  #     };
  #   };

}
