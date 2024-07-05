#zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check; then
    zplug install
fi

zplug load

# Command correct
setopt correct

# Directories
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# History
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Completion
unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

# Key binding
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT="%{${fg[blue]}%}[%~]%{${reset_color}%}"
PROMPT=$PROMPT'${vcs_info_msg_0_}'

function llvm (){
    export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
    export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yutakam80/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yutakam80/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yutakam80/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yutakam80/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/yutakam80/.bun/_bun" ] && source "/Users/yutakam80/.bun/_bun"

# bun
export BUN_INSTALL="/Users/yutakam80/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export PATH="/opt/homebrew/opt/ffmpeg@4/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
