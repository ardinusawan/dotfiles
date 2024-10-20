# dotfiles

This setup using [stow](https://www.gnu.org/software/stow/)

GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

## Pre-required

1. Install [ohmyzsh](https://ohmyz.sh/)

1. Install [tinker](https://tinkle.pqrs.org/)

1. Install [ohmyzsh plugin](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df)

1. Install [homebrew](https://brew.sh/)

1. Install [iTerm2](https://iterm2.com/)

1. Install [tmux](https://github.com/tmux/tmux/wiki)

1. Install [neovim](https://neovim.io/)

1. Install ack `brew install ack`

1. Install ctags `brew install ctags`

1. Install [amix/vimrc](https://github.com/amix/vimrc) (awesome version)

1. [Vim to neovim](https://neovim.io/doc/user/nvim.html)

1. Install [asdf](https://asdf-vm.com)

1. Install [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs)

1. Install nodejs

    ```sh
    asdf install nodejs 20.11.0
    ```

1. Make that version of nodejs global

    ```sh
    asdf global nodejs 20.11.0
    ```

1. Install Plug

    ```

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```

1. Open nvim, execute

    ```sh
    :source %
    :PlugInstall
    :CocInstall coc-json coc-tsserver coc-jedi
    :call mkdp#util#install()
    ```

1. Install and config [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

1. Install [TPM](https://github.com/tmux-plugins/tpm)

    ```sh
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    ```

    Press prefix + I (capital i, as in Install) to fetch the plugin.

1. Config [tmux vim-binding](https://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting/)

1. [Git Delta](https://github.com/dandavison/delta)

1. [LazyVim](https://www.lazyvim.org/installation)

1. [LazyVim Font](https://witcisco.com/posts/add-file-icons-to-lazyvim/)

1. lazygit `brew install jesseduffield/lazygit/lazygit`

## Setup

1. brew install stow
1. execute

    ```
    stow .
    ```

1. when conflict

    ```
    stow --adopt .
    ```

## Multiple Github Account

1. Follow [this](https://www.linkedin.com/pulse/how-use-multiple-github-accounts-macos-atish-maske/)

## Credit

Thanks to [Dreams of Autonomy](https://www.youtube.com/watch?v=y6XCebnB9gs)
