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
    bun
    ghq
    jq
    nixd
    alejandra
    jetbrains-mono
    flyctl
  ];

  fonts.fontconfig.enable = true;

  home.sessionPath = [
    "$ANDROID_HOME/build-tools/36.0.0"
    "$ANDROID_HOME/platform-tools"
  ];

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
    v = "cursor";
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
    "ANDROID_HOME" = "/Users/nicolas/Library/Android/sdk";
  };

  # Add OpenJDK
  programs.java.enable = true;

  imports = [
    ./git.nix
    ./zsh.nix
  ];
}
