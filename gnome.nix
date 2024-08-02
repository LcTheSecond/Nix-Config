
{ config, pkgs, ... }:

{

# Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  environment.gnome.excludePackages = with pkgs.gnome; [
    baobab      # disk usage analyzer
    cheese      # photo booth
    eog         # image viewer
    pkgs.loupe      # image viewer
    epiphany    # web browser
    pkgs.gedit       # text editor
    simple-scan # document scanner
    totem       # video player
    yelp        # help viewer
    evince      # document viewer
    file-roller # archive manager
    geary       # email client
    seahorse    # password manager
    pkgs.snapshot    # webcam
    pkgs.malcontent # parental control
    sushi # Preview in files
    # these should be self explanatory
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-contacts
    #gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    pkgs.gnome-photos
    gnome-screenshot
    gnome-system-monitor
    pkgs.gnome-tour
    gnome-weather
    #gnome-disk-utility
    pkgs.gnome-connections
    pkgs.gnome-user-docs
    pkgs.orca
  ];


}
