# Choose zsh as default shell
chsh -s /bin/zsh


# Install Prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# Install VS Code
snap install code --classic


# Install Vim and VimPlug
sudo pacman -Syu gvim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Install bat
sudo pacman -Syu bat


# Install tree
sudo pacman -Syu tree


# Install colordiff
sudo pacman -Syu colordiff


# Install jq
sudo pacman -Syu jq


# Install nnn
sudo pacman -Syu nnn
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls rust-analysis rust-src


# Install tldr
cargo install tealdeer


# Install ripgrep
sudo pacman -Syu ripgrep


# Install fd
sudo pacman -Syu fd


# Install Python with Miniconda
MINICONDA_INSTALLER='Miniconda3-latest-Linux-x86_64.sh'
wget "https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER"
bash $MINICONDA_INSTALLER
rm $MINICONDA_INSTALLER


# Install JupyterLab and create desktop shortcut
conda install -c conda-forge jupyterlab


# Install Docker, start it on boot, and make the docker command usable as a non-root user (dangerous)
sudo pacman -Syu docker
sudo systemctl enable docker.service
sudo gpasswd -a tlecailtel docker


# Install Kubernetes
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl


# Install k9s
sudo pacman -Syu k9s


# Install kubectl prompt
curl -O https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh
