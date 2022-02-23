## Dotfiles

### ZSH

```bash
test -f /usr/share/zsh/share/antigen.zsh && (Q="$HOME/.zshrc"; test -f $Q && mv -b --suffix=_prev $Q ~/.zshrc_prev; curl -s "https://raw.githubusercontent.com/reformat0r/dotfiles/master/.zshrc" -o $Q; zsh -c "source $Q; antigen update") || echo "Install Antigen first."
```
