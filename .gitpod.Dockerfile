FROM gitpod/workspace-full

RUN sudo curl https://beyondgrep.com/ack-v3.5.0 \
        -o /usr/bin/ack \
    && sudo chmod 0755 /usr/bin/ack \
    && sudo rm /usr/bin/docker-compose \
    && sudo curl \
        -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" \
        -o /usr/bin/docker-compose \
    && sudo chmod +x /usr/bin/docker-compose \
    && sudo git clone https://github.com/nitsanavni/dotfiles.git ${HOME}/dotfiles \
    && sudo cp ${HOME}/dotfiles/.bash_aliases $HOME
