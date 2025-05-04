# 🛠 My Dotfiles (Managed with GNU Stow)

This repository contains my personal configuration files (dotfiles) for tools like `zsh`, `git`, and `nvim`.
It uses [GNU Stow](https://www.gnu.org/software/stow/) to manage symbolic links into the home directory.

---

## 🚀 Getting Started

### 1. Clone this repo

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Install GNU Stow

- macOS (Homebrew):

```bash
brew install stow
```

- Debian/Ubuntu:

```bash
sudo apt install stow
```

### 3. Link dotfiles using Stow

Run this from inside the dotfiles/ directory:

```bash
stow zsh
stow git
stow nvim
```

This will create symlinks in your $HOME like:

- `~/.zshrc` → `dotfiles/zsh/.zshrc`
- `~/.gitconfig` → `dotfiles/git/.gitconfig`
- `~/.config/nvim/init.lua` → `dotfiles/nvim/.config/nvim/init.lua`

You can also stow everything at once:

```bash
stow *
```

🔄 To Unlink (Unstow)

```bash
stow -D zsh
```

This removes the symlinks without deleting your actual dotfiles.
