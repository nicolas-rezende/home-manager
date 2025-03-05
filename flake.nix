{
  description = "Nix configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
  };

  outputs = inputs @ {
    darwin,
    home-manager,
    nix-homebrew,
    ...
  }: {
    darwinConfigurations = {
      "m1-macbook-pro" = let
        moduleArgs =
          inputs
          // {
            hostname = "m1-macbook-pro";
            username = "nicolas";
            homeDir = "/Users/nicolas";
          };
      in
        darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          specialArgs = moduleArgs;
          modules = [
            ./darwin/m1-macbook-pro.nix
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = moduleArgs;
              home-manager.users."${moduleArgs.username}" = import ./home-manager;
            }
            nix-homebrew.darwinModules.nix-homebrew
            {
              nix-homebrew = {
                enable = true;
                enableRosetta = true;
                user = moduleArgs.username;
              };
            }
          ];
        };
    };
  };
}
