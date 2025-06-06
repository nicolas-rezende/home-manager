{
  pkgs,
  hostname,
  username,
  homeDir,
  ...
}: {
  nix.extraOptions = "experimental-features = nix-command flakes";

  networking.hostName = hostname;
  networking.computerName = hostname;

  nix.enable = false;

  security.pam.services.sudo_local.touchIdAuth = true;

  time.timeZone = "America/Sao_Paulo";

  imports = [
    ./system.nix
    ./brew.nix
  ];

  users.users.${username} = {
    name = username;
    home = homeDir;
    shell = pkgs.zsh;
    packages = [
      pkgs.zsh
    ];
  };

  system.stateVersion = 5;
}
