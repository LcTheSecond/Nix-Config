
{ config, pkgs, ... }:

{

# Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  environment.gnome.excludePackages = with pkgs.gnome; [
    pkgs.gnome-console
    pkgs.baobab      # disk usage analyzer
    pkgs.cheese      # photo booth
    pkgs.eog         # image viewer
    pkgs.loupe      # image viewer
    pkgs.epiphany    # web browser
    pkgs.gedit       # text editor
    pkgs.simple-scan # document scanner
    pkgs.totem       # video player
    pkgs.yelp        # help viewer
    pkgs.evince      # document viewer
    pkgs.file-roller # archive manager
    pkgs.geary       # email client
    pkgs.seahorse    # password manager
    pkgs.snapshot    # webcam
    pkgs.malcontent # parental control
    pkgs.sushi # Preview in files
    # these should be self explanatory
    pkgs.gnome-calculator
    pkgs.gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-contacts
    #gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    pkgs.gnome-photos
    pkgs.gnome-screenshot
    pkgs.gnome-system-monitor
    pkgs.gnome-tour
    gnome-weather
    #gnome-disk-utility
    pkgs.gnome-connections
    pkgs.gnome-user-docs
    pkgs.orca
  ];


}
