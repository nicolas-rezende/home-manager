{
  pkgs,
  homeDir,
  username,
  ...
}: {
  home.username = username;
  home.homeDirectory = homeDir;
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    vim
    git
    eza
    bat
    fzf
    transcrypt
    nodejs_22
    pnpm_9
    ghq
    jq
    nixd
    alejandra
    jetbrains-mono
  ];

  fonts.fontconfig.enable = true;

  home.shellAliases = {
    reload = "source ~/.zshrc";
    lpath = "echo $PATH | tr ':' '\n'";
    cat = "bat";
    ls = "eza --color=always --git --group-directories-first";
    la = "eza --color=always --git --group-directories-first --all";
    ll = "eza --color=always --git --group-directories-first --all --long";
    g = "git";
    gg = "lazygit";
    rm = "rm -rf";
    cp = "cp -r";
    c = "clear";
    v = "open $1 -a \"Visual Studio Code\"";
  };

  home.file = {
    ".hushlogin".text = "";
    ".npmrc".source = ../secrets/.npmrc;
  };

  xdg.enable = true;
  xdg.configFile = {
    "ghostty/config".source = ../dotfiles/ghostty-config;
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  imports = [
    ./git.nix
    ./zsh.nix
  ];
}
