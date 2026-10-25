{ config, lib, pkgs, inputs, ...}:
{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true; # allows the use of sysmd-boot
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "mesh"; # Defines my hostname.

  boot.supportedFilesystems = [ "ntfs" ];

  # Configure network connections interactively with nmcli or nmtui, so we can get our wifi.
  networking.networkmanager.enable = true;

  # Sets my time zone.
  time.timeZone = "Africa/Lagos";

  # Selects internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # User Definition: Defines a user account. Didn't forget to set a password with ‘passwd’.
  users.users.mesh = {
    	 isNormalUser = true;
    	 extraGroups = [ "wheel" "networkmanager" ]; # Wheel grants ‘sudo’ privileges for the user.
    	 packages = with pkgs; [
   		 tree
    	 ];
    };
}
