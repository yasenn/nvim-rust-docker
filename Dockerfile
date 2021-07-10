FROM alpine:edge

RUN apk add --no-cache \ 
    git \
    nodejs \
    py3-pip \
    gcc \
    python3-dev \
    musl-dev \
    g++ \
 && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/community \ 
    fd \
    shellcheck \
    bat \
    fzf \
    neovim \
    ripgrep \
    rust \
    shfmt \
    black \
 && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \ 
    skim \
 ;

RUN pip install --upgrade pynvim 

COPY init.vim /root/.config/nvim/init.vim
COPY coc-settings.json /root/.config/nvim/coc-settings.json

RUN ln -s -f /usr/bin/nvim /usr/bin/vi
RUN nvim +PlugInstall +UpdateRemotePlugins +qa --headless 2> /dev/null
