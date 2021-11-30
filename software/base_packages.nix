{ config, pkgs, ... }:

{

  environment = {
    systemPackages = with pkgs; [
      git
      gh
      binutils
      gnutls
      wget
      curl
      bind
      mkpasswd
    ];
  };
}
