{hostname, ...}: {
  system.defaults = {
    smb.NetBIOSName = hostname;
    NSGlobalDomain = {
      # Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
      AppleKeyboardUIMode = 3;
      # Disable press-and-hold for keys in favor of key repeat
      ApplePressAndHoldEnabled = false;
      KeyRepeat = 2;
      InitialKeyRepeat = 15;
      AppleInterfaceStyle = "Dark";
      # enable natural scrolling(default to true)
      "com.apple.swipescrolldirection" = true;
      # disable beep sound when pressing volume up/down key
      "com.apple.sound.beep.feedback" = 0;
      # keyboard substitutions
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      # save panel
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
    };

    finder = {
      _FXShowPosixPathInTitle = true; # show full path in finder title
      AppleShowAllExtensions = true; # show all file extensions
      FXEnableExtensionChangeWarning =
        false; # disable warning when changing file extension
      QuitMenuItem = true; # enable quit menu item
      ShowPathbar = true; # show path bar
      ShowStatusBar = true; # show status bar
    };

    trackpad = {
      Clicking = true; # tap to click
      TrackpadRightClick = true;
      TrackpadThreeFingerDrag = false;
    };

    dock = {
      tilesize = 42;
      # Enable magnification
      largesize = 80;
      magnification = true;
      # Remove dock delay
      expose-animation-duration = 0.15;
      autohide-delay = 0.0;
      autohide-time-modifier = 0.0;
      autohide = true;
      # Remove all hot corners
      wvous-br-corner = null;
      wvous-bl-corner = null;
      wvous-tr-corner = null;
      wvous-tl-corner = null;
      # Misc
      show-recents = false;
      mouse-over-hilite-stack = true;
      orientation = "bottom";
    };
  };
}
