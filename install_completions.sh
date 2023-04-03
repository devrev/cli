#!/bin/sh
# A script for installing shell completions

set -e

shell_name="$(basename "$SHELL")"
devrev_bin="$1"

if [ ! -f "$devrev_bin" ]; then
  echo "devrev executable not found, please pass the path as the first argument"
  exit 1
fi

install_bash_completions() {
  completions_dir="${BASH_COMPLETION_USER_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/bash-completion}"/completions
  [ ! -d "$completions_dir" ] && mkdir -p "$completions_dir"
  "$devrev_bin" completion bash > "$completions_dir"/devrev
}

install_zsh_completions() {
  if [ -d "$HOME"/.oh-my-zsh ]; then
    # If the user is using o-my-zsh, this is a natural place to put the completions
    completions_dir=$HOME/.oh-my-zsh/completions
    [ ! -d "$completions_dir" ] && mkdir -p "$completions_dir"
    "$devrev_bin" completion zsh > "$completions_dir"/_devrev
  else
    # Otherwise put it in our own directory, and add it to the fpath
    completions_dir=$HOME/.devrev/completions
    [ ! -d "$completions_dir" ] && mkdir -p "$completions_dir"
    "$devrev_bin" completion zsh > "$completions_dir"/_devrev

    echo -e "fpath+=(""$completions_dir"")\n$(cat "$HOME"/.zshrc)" > "$HOME"/.zshrc
    printf "Completion script was installed in '%s'. We made an effort to add " \
      "this to the fpath in .zshrc, but you need to ensure that compinit is " \
      "run after it in the .zshrc" "$completions_dir"
  fi
}

install_fish_completions() {
  completions_dir=$HOME/.config/fish/completions
  [ ! -d "$completions_dir" ] && mkdir -p "$completions_dir"
  "$devrev_bin" completion fish > "$completions_dir"/devrev.fish
}

if [ "$shell_name" = "zsh" ]; then
  install_zsh_completions
elif [ "$shell_name" = "bash" ]; then
  install_bash_completions
elif [ "$shell_name" = "fish" ]; then
  install_fish_completions
else
  printf "Shell '%s' has not been added to the script yet, generate " \
  "completions with 'devrev completion [shell_name]' and save the output to " \
  "wherever your shell reads them from, then create a new PR with your shell " \
   "added to the script" "$shell_name"
fi

echo "Installed completions for $shell_name shell"
