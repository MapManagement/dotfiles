source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
SAVEHIST=1000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history
alias ls='ls --color=auto'
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Keybinds
bindkey    "^[[H"    beginning-of-line
bindkey    "^[[F"    end-of-line
bindkey    "^[[3~"    delete-char
