{...}: {
  homebrew = {
    enable = true;
    brews = ["cocoapods"];
    casks = [
      "google-chrome"
      "visual-studio-code"
      "betterdisplay"
      "raycast"
      "discord"
      "ghostty"
      "1password"
      "openvpn-connect"
      "docker"
      "fork"
      "linearmouse"
      "sanesidebuttons"
    ];
    masApps = {
      Xcode = 497799835;
      Infuse = 1136220934;
    };
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
  };
}
