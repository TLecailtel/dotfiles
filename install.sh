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
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install code --classic


# Install Microsoft Teams
sudo snap install teams


# Install LibreOffice
sudo pacman -Syu libreoffice-fresh


# Install Sublime Text
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text


# Install Vim and VimPlug (text editor and a plugin manager)
sudo pacman -Syu gvim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Install bat (cat alternative)
sudo pacman -Syu bat


# Install delta (diff and git diff alternative)
sudo pacman -Syu git-delta


# Install jq (JSON processor)
sudo pacman -Syu jq


# Install Csvdiff (diff of CSV files)
curl -sfL https://raw.githubusercontent.com/aswinkarthik/csvdiff/master/install.sh | sh -s
sudo mv ./bin/csvdiff /usr/local/bin/csvdiff
rmdir ./bin


# Install Rust (programming language)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rls rust-analysis rust-src


# Install tldr (man alternative)
cargo install tealdeer


# Install zoxide (cd alternative)
cargo install zoxide --locked


# Install ripgrep (grep alternative)
sudo pacman -Syu ripgrep


# Install ripgrep-all (ripgrep for more filetypes)
sudo pamac install ripgrep-all


# Install fd (find alternative)
sudo pacman -Syu fd


# Install Python and JupyterLab
sudo pacman -Syu python
python -m pip install jupyterlab
mkdir -p ~/venv/myenv
python -m venv ~/venv/myenv
source ~/venv/myenv/bin/activate
python -m pip install --upgrade pip ipykernel
python -m ipykernel install --name "myenv" --user


# Install Docker (container manager), start it on boot, and make the docker command usable as a non-root user (dangerous)
sudo pacman -Syu docker docker-compose docker-buildx
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
