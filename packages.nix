
{ config, pkgs, ... }:

{


  # Install firefox.
  programs = {
  	git.enable = true;
};

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
      pkgs.gnome.gnome-tweaks
      pkgs.wget
      pkgs.go
      pkgs.vscode
      pkgs.librewolf
      pkgs.alacritty
      pkgs.fish
      pkgs.gh
      pkgs.brave
      pkgs.podman
      pkgs.distrobox
      pkgs.boxbuddy
  ];
  

}
