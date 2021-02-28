# Choose zsh as default shell
chsh -s /bin/zsh


# Install prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# Install VS Code
snap install code --classic


# Install vim and vim-plug
pacman -Syu gvim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Install bat
pacman -Syu bat


# Install tree
pacman -Syu tree


# Install colordiff
pacman -Syu colordiff


# Install jq
pacman -Syu jq


# Install nnn
pacman -Syu nnn
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls rust-analysis rust-src


# Install tldr
cargo install tealdeer


# Install ripgrep
pacman -Syu ripgrep


# Install fd
pacman -Syu fd


# Install Python with Miniconda
MINICONDA_INSTALLER='Miniconda3-latest-Linux-x86_64.sh'
wget "https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER"
bash $MINICONDA_INSTALLER
rm $MINICONDA_INSTALLER


# Install k9s
pacman -Syu k9s


# Install kubectl prompt
curl -O https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh
