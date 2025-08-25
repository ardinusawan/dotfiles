# dotfiles

This setup using [stow](https://www.gnu.org/software/stow/)

GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

## Pre-required

1. `xcode-select --install`

1. ```brew install stow ripgrep fd ack ctags jesseduffield/lazygit/lazygit tig```

1. Install [ohmyzsh](https://ohmyz.sh/)

1. Install [Clippy](https://github.com/Clipy/Clipy)

1. Install [ohmyzsh plugin](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df)

1. Install [homebrew](https://brew.sh/)

1. Install [iTerm2](https://iterm2.com/)

1. Install [tmux](https://github.com/tmux/tmux/wiki)

1. Install [neovim](https://neovim.io/)

1. Install [asdf](https://asdf-vm.com)

1. Install [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs)

1. Install nodejs

    ```sh
    asdf install nodejs 22.18.0
    ```

1. Make that version of nodejs global

1. [LazyVim Font](https://witcisco.com/posts/add-file-icons-to-lazyvim/)

1. Install font
    `brew install --cask font-jetbrains-mono-nerd-font`
    `brew install --cask font-fira-code-nerd-font`

1. Configure iTerm2 to use it
    - Open iTerm2 → Preferences → Profiles → Text.
    - nUnder Font, pick JetBrainsMono Nerd Font (or whichever you installed).
    - ⚠️ Important: make sure it says Nerd Font, not just “JetBrains Mono”.
    - Uncheck: “Use a different font for non-ASCII text” (this is a classic cause of missing icons).
    - Restart iTerm2 (quit fully, ⌘Q).

1. Install and config [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

1. sync dotfiles `stow .`

1. Install [TPM](https://github.com/tmux-plugins/tpm)

    ```sh
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    ```

    Press prefix + I (capital i, as in Install) to fetch the plugin.


## Sync using Stow

1. execute

    ```sh
    stow .
    ```

1. when conflict

    ```sh
    stow --adopt .
    ```

## Multiple Github Account

1. Follow [this](https://www.linkedin.com/pulse/how-use-multiple-github-accounts-macos-atish-maske/)

## Credit

- Stow: Thanks to [Dreams of Autonomy](https://www.youtube.com/watch?v=y6XCebnB9gs)
