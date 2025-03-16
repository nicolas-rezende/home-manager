{...}: {
  programs.lazygit = {
    enable = true;
    settings = {
      update.method = "never";
      disableStartupPopups = true;
      git.autoFetch = false;
    };
  };

  programs.git = {
    enable = true;
    userName = "Nicolas Rezende";
    userEmail = "git@nicolasrezende.com";
    extraConfig = {
      pull.rebase = true;
      credential.helper = "cache --timeout=28800";
      init.defaultBranch = "main";
      rerere.enabled = "true";
      push.default = "current";
      ghq = {
        root = "~/.ghq";
      };
    };
    includes = [
      {
        condition = "hasconfig:remote.*.url:https://gitlab.sydle.com/**";
        contents = {
          user = {
            name = "Nicolas Gomes de Rezende";
            email = "nicolas.rezende@sydle.com";
          };
        };
      }
    ];
  };
}
