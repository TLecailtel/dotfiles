# Choose zsh as default shell
chsh -s /bin/zsh


# Install Prezto (zsh config framework)
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


# Install VS Code (IDE)
snap install code --classic


# Install Vim and VimPlug (text editor and a plugin manager)
sudo pacman -Syu gvim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Install bat (cat alternative)
sudo pacman -Syu bat


# Install colordiff (diff alternative)
sudo pacman -Syu colordiff


# Install jq (JSON processor)
sudo pacman -Syu jq


# Install Rust (programming language)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls rust-analysis rust-src


# Install tldr (man alternative)
cargo install tealdeer


# Install ripgrep (grep alternative)
sudo pacman -Syu ripgrep


# Install yay (AUR helper)
sudo pacman -Syu yay


# Install ripgrep-all (ripgrep for more filetypes)
yay -S ripgrep-all


# Install fd (find alternative)
sudo pacman -Syu fd


# Install Python with Miniconda (Python environment manager)
MINICONDA_INSTALLER='Miniconda3-latest-Linux-x86_64.sh'
wget "https://repo.anaconda.com/miniconda/$MINICONDA_INSTALLER"
bash $MINICONDA_INSTALLER
rm $MINICONDA_INSTALLER


# Install JupyterLab (notebook IDE)
conda install -c conda-forge jupyterlab


# Install Docker (container manager), start it on boot, and make the docker command usable as a non-root user (dangerous)
sudo pacman -Syu docker
sudo systemctl enable docker.service
sudo gpasswd -a tlecailtel docker


# Install Kubernetes (container cluster manager)
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl


# Install k9s (Kubernetes UI)
sudo pacman -Syu k9s


# Install kubectl prompt (Kubernetes context in prompt)
curl -O https://raw.githubusercontent.com/superbrothers/zsh-kubectl-prompt/master/kubectl.zsh
