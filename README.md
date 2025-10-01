# Dotfiles

This setup uses [GNU Stow](https://www.gnu.org/software/stow/).

GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place. Perfect for managing dotfiles.

---

## Pre-required

1. Install Xcode CLI tools (macOS):

   ```sh
   xcode-select --install
   ```

2. Install packages:

   ```sh
   brew install stow ripgrep fd ack ctags jesseduffield/lazygit/lazygit tig git-delta jq
   ```

3. Install [Homebrew](https://brew.sh/)

4. Install [oh-my-zsh](https://ohmyz.sh/)

5. Install [Clipy](https://github.com/Clipy/Clipy)

6. Install [oh-my-zsh plugin](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df)

7. Install [iTerm2](https://iterm2.com/)

8. Install [tmux](https://github.com/tmux/tmux/wiki)

9. Install [Neovim](https://neovim.io/)

10. Install [asdf](https://asdf-vm.com)

11. Install [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs)

12. Install Node.js:

    ```sh
    asdf install nodejs 22.18.0
    asdf global nodejs 22.18.0
    ```

13. [LazyVim Font Setup](https://witcisco.com/posts/add-file-icons-to-lazyvim/)

    ```sh
    brew install --cask font-jetbrains-mono-nerd-font
    brew install --cask font-fira-code-nerd-font
    ```

    Configure in iTerm2 → Preferences → Profiles → Text → Font.  
    - Pick JetBrainsMono Nerd Font (or whichever you installed).  
    - Ensure it says **Nerd Font**, not just JetBrains Mono.  
    - Uncheck “Use a different font for non-ASCII text”.  
    - Restart iTerm2.

14. Install and configure [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

15. Install [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager):

    ```sh
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux source ~/.tmux.conf
    ```

    Press prefix + **I** (capital i) to fetch the plugin.

16. Instal go-dlv `go install github.com/go-delve/delve/cmd/dlv@latest`

---

## Sync using Stow

### 1. Basic usage

From the `dotfiles/` repo root, run:

```sh
stow zsh
stow tmux
stow git
stow nvim
```

### 2. When conflicts occur

If you see warnings like:

```
cannot stow .../.zshrc over existing target ~/.zshrc
```

- **Adopt existing files into the repo** (if `$HOME` has the latest):

  ```sh
  stow --adopt zsh
  ```

- **Backup and remove old files** (if repo is the source of truth):

  ```sh
  mv ~/.zshrc ~/.zshrc.bak
  stow zsh
  ```

### 3. `.stowrc`

We keep a `.stowrc` in the repo root:

```
--target=~
--verbose
--restow
```

This makes `stow` default to home directory, be verbose, and update symlinks.  
Add `--adopt` if you want stow to move conflicts automatically (⚠️ use with care).

### 4. Fresh machine workflow

1. Clone repo:

   ```sh
   git clone git@github.com:ardinusawan/dotfiles.git ~/Code/dotfiles
   cd ~/Code/dotfiles
   ```

2. Run stow:

   ```sh
   stow zsh tmux git nvim
   ```

3. Done.

---

## Multiple GitHub Accounts

Configure `~/.ssh/config`:

```ssh-config
# Personal
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_personal

# Work
Host github-work
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_work
```

Clone work repos with:

```sh
git clone git@github-work:org/repo.git
```

---

## Credit

- [GNU Stow](https://www.gnu.org/software/stow/)
- Thanks to [Dreams of Autonomy](https://www.youtube.com/watch?v=y6XCebnB9gs)
