FROM archlinux:latest as base
WORKDIR /base
RUN pacman -Syu --noconfirm && \
    pacman -S git sudo alacritty && \
    pacman -S ansible-core ansible && \
    echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers && \
    useradd -G wheel -m tester --disabled-password

FROM base as customised
WORKDIR /home/tester
USER tester
COPY --chown=tester . .
ENTRYPOINT ["ansible-playbook", "-K", "dotfiles/playbook.yml"]
