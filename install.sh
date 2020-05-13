# Install zsh
sudo apt install zsh  # Ubuntu
# sudo yum install zsh  # CentOS
chsh -s /bin/zsh


# Install prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# Install VS Code Server
code .


# Install shellcheck
sudo apt install shellcheck


# Install gcc
sudo apt install build-essential  # Ubuntu


# Install tldr
mkdir -p ~/bin
curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
chmod +x ~/bin/tldr


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh  # WSL2
# curl https://sh.rustup.rs -sSf | sh  # UNIX
rustup component add rls rust-analysis rust-src


# Install broot
cargo install broot
broot


# Install ripgrep
sudo apt install ripgrep  # Ubuntu
# sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo  # CentOS
# sudo yum install ripgrep  # CentOS


# Install Python with Anaconda
ANACONDA_INSTALLER="Anaconda3-2020.02-Linux-x86_64.sh"
wget "https://repo.continuum.io/archive/$ANACONDA_INSTALLER"
bash $ANACONDA_INSTALLER
rm $ANACONDA_INSTALLER
