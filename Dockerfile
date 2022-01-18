FROM gitpod/workspace-full

USER gitpod

RUN sudo apt update \
    && sudo apt install -y build-essential procps curl file git

# RUN brew install \
#     antigen \
#     tmux
#     fzf \
#     tree \
#     fd \
#     rg \
#     tldr \
#     gh \
#     hub \
#     httpie \
#     autojump \
#     bat

# RUN sudo chsh -s $(command -v zsh) gitpod

# RUN git clone --branch master --depth 1 https://github.com/gpakosz/.tmux.git \
#     && ln -s -f .tmux/.tmux.conf

# COPY --chown=gitpod dotfiles/zshrc .zshrc
# COPY --chown=gitpod dotfiles/antigenrc .antigenrc
# COPY --chown=gitpod dotfiles/tmux.conf.local .tmux.conf.local

# # Custom credentials helper for Git
# COPY --chown=gitpod scripts/my-credentials-helper .my-credentials-helper
# ENV GIT_ASKPASS=/home/gitpod/.my-credentials-helper
