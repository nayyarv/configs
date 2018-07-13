source ~/.local/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh


if [ "$HOST" = varun-ubuntu ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
    export PATH="/home/varun/.local/bin:$PATH"
    export EDITOR=subl
    antigen bundle sublime
    antigen bundle linuxbrew
    antigen bundle agkozak/agkozak-zsh-theme

elif [ "$HOST"  = varun-macbook.local ]; then
    export EDITOR=subl
    export PATH="/home/varun/.local/bin:$PATH"
    antigen bundle gem
    antigen bundle osx
    antigen bundle sublime
    antigen theme robbyrussell
    
else
    # assume we're on a server
    export EDITOR=vim
    export PATH="/home/varun/.local/bin:$PATH"
    antigen theme ys
fi


# Bundles from the default repo (robbyrussell's oh-my-zsh).\
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
alias pip3i="pip3 install --user"

alias pip2i="pip2 install --user"

# haskell
antigen bundle stack

# having fun

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle fast-syntax-highlighting 

antigen bundle forgit



# Tell Antigen that you're done.
antigen apply

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias pg="ps auxwwww | grep"
alias P="| peco"