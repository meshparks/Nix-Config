{ config, pkgs, inputs, ...}:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # *
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  # *
  # Configure keymap in X11
  services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;
}
