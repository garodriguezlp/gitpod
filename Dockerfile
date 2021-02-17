FROM gitpod/workspace-full

RUN brew install \
    zsh \
    antigen \
    tmux \
    tree \
    fzf \
    fd \
    rg \
    gh \
    tldr \
    hub \
    httpie \
    jenv \
    autojump \
    bat

RUN command -v zsh | sudo tee -a /etc/shells \
    && sudo chsh -s $(command -v zsh) gitpod

RUN git clone --branch master --depth 1 https://github.com/gpakosz/.tmux.git \
    && ln -s -f .tmux/.tmux.conf

COPY --chown=gitpod dotfiles/zshrc .zshrc
COPY --chown=gitpod dotfiles/antigenrc .antigenrc
COPY --chown=gitpod dotfiles/tmux.conf.local .tmux.conf.local
COPY --chown=gitpod scripts/my-credentials-helper .my-credentials-helper

# Git config

ENV GIT_AUTHOR_EMAIL='1432287+garodriguezlp@users.noreply.github.com'
ENV GIT_COMMITTER_NAME='1432287+garodriguezlp@users.noreply.github.com'
ENV GIT_ASKPASS=/home/gitpod/.my-credentials-helper.sh