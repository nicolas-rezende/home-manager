{...}: {
  homebrew = {
    enable = true;
    brews = ["cocoapods"];
    casks = [
      "firefox"
      "android-studio"
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
      "vmware-fusion"
      "linearmouse"
      "sanesidebuttons"
      "shottr"
      "fork"
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
