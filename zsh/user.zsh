# User configuration
HISTFILE="$ZDOTDIR/histfile"
HISTSIZE=1000
SAVEHIST=1000

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
alias getp="ps waxf|grep -v grep|grep "
alias nvim-config="(cd ~/.config/nvim; nvim -c ':Neotree filesystem reveal left' lua/vim-keymaps.lua)"
alias nvi="nvim -c ':Neotree filesystem reveal left'"
