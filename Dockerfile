FROM gitpod/workspace-full

RUN brew install zsh antigen tmux tree fzf fd rg gh tldr hub httpie

COPY dotfiles/zshrc .zshrc
COPY dotfiles/antigenrc .antigenrc

RUN sudo chsh --shell $(which zsh) gitpod