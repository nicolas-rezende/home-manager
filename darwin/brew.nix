{...}: {
  homebrew = {
    enable = true;
    brews = ["cocoapods"];
    casks = [
      "google-chrome"
      "betterdisplay"
      "raycast"
      "discord"
      "ghostty"
      "1password"
      "visual-studio-code"
      "linearmouse"
      "sanesidebuttons"
      "shottr"
      "appcleaner"
      "spotify"
      "obsidian"
      "bitwarden"
    ];
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };
  };
}
