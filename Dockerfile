FROM gitpod/workspace-full

RUN brew install zsh antigen tmux tree fzf fd rg gh tldr hub httpie

COPY dotfiles/zshrc .zshrc
COPY dotfiles/antigenrc .antigenrc

RUN command -v zsh | sudo tee -a /etc/shells && \
    sudo chsh -s $(command -v zsh) gitpod