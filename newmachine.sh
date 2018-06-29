# run this on new machines. This gets some stuff I use regularly and need in my zshrc

mkdir -p ~/.local
curl -L git.io/antigen > ~/.local/antigen.zsh
sudo apt-get install zsh
chsh -s $(which zsh)

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
