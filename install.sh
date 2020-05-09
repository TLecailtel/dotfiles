# 1) Install zsh

sudo apt install zsh  # Ubuntu
# sudo yum install zsh  # CentOS
chsh -s /bin/zsh


# 2) Install prezto

zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# 3) Install fd

sudo apt install fd-find  # Ubuntu


# 4) Install ripgrep

sudo apt install ripgrep  # Ubuntu
# sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo  # CentOS
# sudo yum install ripgrep  # CentOS
