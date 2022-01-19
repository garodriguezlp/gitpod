FROM gitpod/workspace-full

USER gitpod

# Install tools with homebrew
RUN eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv) \
    && brew install \
    antigen \
    tmux \
    fzf \
    tree \
    fd \
    rg \
    tldr \
    hub \
    autojump \
    bat \
    httpie

RUN sudo chsh -s $(command -v zsh) gitpod

RUN git clone --branch master --depth 1 https://github.com/gpakosz/.tmux.git \
    && ln -s -f .tmux/.tmux.conf

COPY --chown=gitpod dotfiles/zshrc .zshrc
COPY --chown=gitpod dotfiles/antigenrc .antigenrc
COPY --chown=gitpod dotfiles/tmux.conf.local .tmux.conf.local