export EDITOR=subl
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
export PATH="/home/varun/.local/bin:$PATH"


source ~/Applications/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).


antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle copyzshell 
antigen bundle ssh-agent

# git
antigen bundle git
antigen bundle git-flow
antigen bundle git-extras

# python
antigen bundle python
antigen bundle pip
# antigen bundle autoenv
antigen bundle virtualenv

alias pipi="pip3 install --user"
alias pip2i="pip2 install --user"

# haskell
antigen bundle stack


# editor
antigen bundle sublime

# having fun

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle fast-syntax-highlighting 

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    antigen bundle linuxbrew
fi


antigen bundle forgit


# Load the theme.
antigen theme ys

# Tell Antigen that you're done.
antigen apply


#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias pg="ps auxwwww | grep"
alias ll="ls -lh"