{ pkgs, ... }:
{

virtualisation.docker.enable = true;
users.extraGroups.docker.members = [ "lcthesecond" ];
#  virtualisation.docker.storageDriver = "btrfs";



}
