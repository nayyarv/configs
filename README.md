# Varun's Configs


## Install Pre Reqs
```bash
# Ubuntu
sudo apt install zsh curl

# OS X
brew install zsh curl

```

## Install configs


```bash
git clone https://github.com/nayyarv/configs.git ~/Downloads/configs
cd ~/Downloads/configs
./newmachine.sh
chsh -s $(which zsh)
cp .zshrc ~/.zshrc
```

Open a new terminal, wait for initial setup. Go to .zshrc and add/remove stuff