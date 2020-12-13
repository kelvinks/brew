# Brew recovery my settings
Brew Setting recovery 
recovery setting with brew bundle

## Command
<pre><code>
curl -L https://raw.githubusercontent.com/kelvinks/brew/master/setting.sh | sh
</code></pre>

****
# Brewfile information
#### Taps
    tap "heroku/brew"
    tap "homebrew/core"
    tap "homebrew/cask"
    tap "homebrew/cask-fonts"
    tap "homebrew/bundle"

#### Application Path
    cask_args appdir: "/Applications"

#### Binaries/Libraries
    # system
    brew "heroku/brew/heroku"
    brew "mas"                                            # Mac App Store install
    # support
    brew "coreutils"                                      # Install GNU Core
    # Utilities
    brew "yarn"                                           # npm replacement yarn
    brew "tree"
    brew "openssl@1.1"
    brew "neofetch"
    brew "wget"
    brew "telnet"
    cask "ngrok"
    brew "tmux"
    cask "iterm2"
    brew "mackup"                                         # MacBackup
    cask "karabiner-elements"
    brew "svn"
#### Zsh
    brew "zsh"
    brew "zsh-completions"
    brew "fasd"
    brew "fzf"
#### Git
    brew "git"
    brew "git-flow"
    brew "git-lfs"
    brew "tig"
    cask "sourcetree"
#### NTFS
    cask "osxfuse"
    brew "ntfs-3g"
    cask "mounty"

#### Language 
    brew "python"
    brew "node" 	                                      # node with npm
    brew "ruby"                                           # Ruby
    brew "jq"                                             # json
    brew "java"                                           # java, need user pass
    cask "miniconda"                                      # virtual , need user pass

#### Utils
    brew "neovim"                                         # NeoVim
    brew "youtube-dl"                                     # Youtube Download Cli
    brew "x264"
    brew "asciinema"                                      # Terminal Record
    brew "micro"
    cask "itsycal"                                        # Calindar               
    cask "bitwarden"                                      # Passwords manage
    cask "keka"                                           # Arhive

### Database
    cask "db-browser-for-sqlite"

### IDE 
    cask "pycharm-ce"
    brew "visual-studio-code"
    cask "intellij-idea"

### Multimedia 
    cask "iina"                                           # Video Player
    cask "vox"                                            # Audio Player

### Browser
    cask "google-chrome"

### Markdown
    cask "boostnote"                                      # Markdown Note
    cask "simplenote"                                     # Note(Win,Mac,Linux,Mobile)

# fonts
    cask "font-d2coding"
    cask "font-hack-nerd-font"
    cask "font-meslo-lg-nerd-font"
    cask "font-meslo-for-powerline"
    cask "font-nanum-gothic"
    cask "font-nanum-gothic-coding"
    cask "font-fira-code-nerd-font"
    cask "font-fira-mono-nerd-font"
    cask "font-iosevka-nerd-font"
    cask "font-noto-nerd-font"
    cask "font-roboto-mono-nerd"
    cask "font-ubuntu-nerd-font"
    cask "font-powerline-symbols"
