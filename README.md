# hyprland-config

## Install dependecies 
- `sudo pacman -S waybar hyprpaper rofi alacritty zsh ttf-jetbrains-mono-nerd zoxide brightnessctl fzf yazi grim slurp wl-clipboard neovim` <br>
- `paru -S sublime-text-4 swappy`

## Configure oh-my-zsh
- `chsh -s /bin/zsh` <br>
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` <br>
- `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting` <br>
- `mkdir -p "$HOME/.zsh"` <br>
- `git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"` <br>
