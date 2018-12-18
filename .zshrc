# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# fzf - https://github.com/junegunn/fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
#
# # Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

## Aliases
alias vimrc="vim ~/.vimrc"

# zpresto Sorin theme modifications
PROMPT='%B%F{14}%~%b
${SSH_TTY:+"%F{9}%n%f%F{7}@%f%F{3}%m%f "}%F{4}%(!. %B%F{1}#%f%b.)${editor_info[keymap]} '
zstyle ':prezto:module:editor:info:keymap:primary' format '%B%F{1}❯%F{3}❯%F{2}❯%f%b'
zstyle ':prezto:module:editor:info:keymap:primary:overwrite' format '%F{3}♺%f'
zstyle ':prezto:module:editor:info:keymap:alternate' format '%B%F{2}❮%F{3}❮%F{1}❮%f%b'

# exports

# Make vim default editor
export VISUAL=vim
export EDITOR="$VISUAL"
