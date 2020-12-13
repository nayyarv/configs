source ~/.local/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh


if [ "$HOST" = varun-ubuntu ]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
    export PATH="/home/varun/.local/bin:$PATH"
    antigen bundle linuxbrew
    antigen theme iplaces/astro-zsh-theme
    antigen bundle sublime
    export GIT_EDITOR='subl -w'
    export EDITOR='subl'


elif [ "$HOST"  = varun-macbook ]; then
    export PATH="/home/varun/.local/bin:$PATH"
    antigen bundle osx
    antigen theme robbyrussell
    # antigen bundle sublime
    export GIT_EDITOR='subl -w'
    export EDITOR='subl'

    # pyenv
    # eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"


    # fzf handling
    fdpath=$(which fd)
    export FZF_DEFAULT_COMMAND='$fdpath'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

else
    # assume we're on a server
    export EDITOR=vim
    export PATH="/home/varun/.local/bin:$PATH"
    antigen theme ys
fi

# pyenv
# export PATH="/home/varun/.pyenvb/strin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"



# for machine specific thingies
[ -f ~/.commonrc ] && source ~/.commonrc

# Bundles from the default repo (robbyrussell's oh-my-zsh).\
antigen bundle common-aliases
# antigen bundle command-not-found
# antigen bundle copyzshell
antigen bundle ssh-agent

# git
antigen bundle git
# antigen bundle git-flow
# antigen bundle git-extras

# python
# antigen bundle python
# antigen bundle pip
# antigen bundle autoenv
# antigen bundle virtualenv

alias pipi="pip3 install --user"
alias pip3i="pip3 install --user"
alias pip2i="pip2 install --user"

alias notebook="jupyter notebook"

# haskell
# antigen bundle stack

# having fun

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle fast-syntax-highlighting 

# antigen bundle forgit

# Tell Antigen that you're done.
antigen apply

if [ $fdpath ]; then
    unalias fd
fi


#fzf is godly
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias pg="ps auxwwww | grep"
alias P="| peco"

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/.poetry/bin
fpath+=~/.zfunc


eval "$(direnv hook zsh)"  # put in ~/.zshrc
# Created by `userpath` on 2020-09-06 09:14:50
export PATH="$PATH:/Users/varun/.local/bin"
