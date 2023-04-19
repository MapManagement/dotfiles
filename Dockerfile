FROM archlinux:latest as base
WORKDIR /base
RUN pacman -Syu --noconfirm && \
    pacman -S git sudo alacritty --noconfirm && \
    pacman -S ansible-core ansible --noconfirm && \
    echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers && \
    useradd -G wheel -m tester -p tester

FROM base
WORKDIR /home/tester
USER tester
COPY --chown=tester . .
ENTRYPOINT ["ansible-playbook", "-K", "playbook.yml"]
