# Install zsh
sudo apt install zsh
chsh -s /bin/zsh


# Install prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# Install brew
sudo apt-get install build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


# Install lesspipe
sudo apt install fastjar hdf5-tools html2text imagemagick libreoffice mediainfo p7zip-full poppler-utils rar unrar unzip zip
git clone https://github.com/wofr06/lesspipe.git
cd lesspipe
./configure
sudo cp lesspipe.sh code2color /usr/local/bin


# Install VS Code Server
code .


# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Install tree
sudo apt install tree


# Install shellcheck
sudo apt install shellcheck


# Install jq
sudo apt install jq


# Install nnn
sudo apt install nnn


# Install tldr
mkdir -p ~/bin
curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
chmod +x ~/bin/tldr


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh  # WSL2
# curl https://sh.rustup.rs -sSf | sh  # UNIX
rustup component add rls rust-analysis rust-src
sudo apt install pkg-config libssl-dev cmake libclang


# Install ripgrep
sudo apt install ripgrep


# Install fd
sudo apt install fd-find


# Install Python with Anaconda
ANACONDA_INSTALLER="Anaconda3-2020.02-Linux-x86_64.sh"
wget "https://repo.continuum.io/archive/$ANACONDA_INSTALLER"
bash $ANACONDA_INSTALLER
rm $ANACONDA_INSTALLER


# Install k9s
brew install derailed/k9s/k9s


# Install kubectl prompt
curl -O https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh
