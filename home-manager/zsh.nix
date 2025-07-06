{...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "lukerandall";
    };
    initContent = ''
      unalias md

      md() {
        mkdir -p $1
        cd $1
      }

      r() {
        dir_path=$( (ghq list -p; find "$HOME/Developer" -maxdepth 1 -type d 2>/dev/null) | fzf )

        if [[ -n "$dir_path" ]]; then
          cd "$dir_path"
        fi
      }

      nuke() {
        git clean -d -X -f
        pnpm install
        pnpm nx run-many -t build
        pnpm install
      }
    '';
  };
}
