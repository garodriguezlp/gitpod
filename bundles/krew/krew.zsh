# add to the path
krew_bin="${HOME}/.krew/bin" 
[[ -d "${krew_bin}" ]] && export PATH="${PATH}:${krew_bin}"

# load completions
if [ $commands[kubectl-krew] ]; then
  source <(kubectl-krew completion zsh)
fi