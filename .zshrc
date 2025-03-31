export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
source <(ng completion script)

# Prompt configuration
autoload -U colors && colors
#PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

NEWLINE=$'\n'
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}% ${NEWLINE}%"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/andrew/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

#IntelliJ shell configuration (edited by Andrew)
if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
...
fi
export PATH="/Applications/IntelliJ IDEA 2024.app/Contents/MacOS:$PATH"
