# User configuration
HISTFILE="$ZDOTDIR/histfile"
HISTSIZE=1000
SAVEHIST=1000

setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
#setopt share_history

setopt autocd beep extendedglob nomatch notify

bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]
then
    PATH=".:/$HOME/.local/bin:$PATH"
fi
export PATH

export KEYTIMEOUT=1
export GPG_TTY=$(tty)
export EDITOR=nvim
export PYTHONPATH=.

export PASSWORD_STORE_DIR=~/.local/share/.password-store
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

export CARGO_HOME=~/.local/share/cargo

alias vi="nvim"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias cat="bat"
alias grep="rg"
alias ls="eza --icons=always"
alias getp="ps waxf|/usr/bin/grep -v grep|/usr/bin/grep "
alias nvim-config="(cd ~/.config/nvim; nvim -c ':Neotree filesystem reveal left' lua/vim-keymaps.lua)"
alias nvi="nvim -c ':Neotree filesystem reveal left'"
alias ze="zellij edit -f"
alias asp="cat ~/tmp/fedora.txt | fzf"
