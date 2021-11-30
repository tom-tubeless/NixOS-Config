{ config, pkgs, ... }:

{

  users = {
    mutableUsers = false;
    users.lgo = {
      isNormalUser = true;
      extraGroups = [ "wheel" "docker" ];
      # mkpasswd -m sha-512 password; or openssl passwd -6
      hashedPassword = "$6$QyjhaWM/4UYU5cC7$Q5kty.YFgNhxOwZ5lTc7UQRwI9NBHUXbMZr6grRVm8ZRL1kCxbMr9IVwX8Lc0bOnkLN5V8JUAxkiSZq4ntmA50";
      openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK8E9qXTKVGPUVFynznaYEUwXCEyjNjE/CYmlciqKpmh tom1@xps-15" ];
    };
  };

}
