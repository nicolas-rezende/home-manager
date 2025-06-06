{...}: {
  homebrew = {
    enable = true;
    brews = ["cocoapods"];
    casks = [
      "firefox"
      "android-studio"
      "google-chrome"
      "visual-studio-code"
      "cursor"
      "betterdisplay"
      "raycast"
      "discord"
      "ghostty"
      "1password"
      "openvpn-connect"
      "docker"
      "fork"
      "vmware-fusion"
      "linearmouse"
      "sanesidebuttons"
      "shottr"
      "appcleaner"
      "bruno"
      "spotify"
      "obsidian"
    ];
    masApps = {
      Xcode = 497799835;
    };
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
  };
}
