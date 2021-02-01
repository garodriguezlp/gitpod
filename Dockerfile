FROM gitpod/workspace-full

RUN brew install zsh antigen tmux tree fzf fd rg gh tldr hub httpie

COPY --chown=gitpod dotfiles/zshrc .zshrc
COPY --chown=gitpod dotfiles/antigenrc .antigenrc

RUN command -v zsh | sudo tee -a /etc/shells && \
    sudo chsh -s $(command -v zsh) gitpod