# kube aliases
alias podlist="kubectl get pods"
alias poddesc="kubectl describe pod"
alias podlog="kubectl logs"
alias svclist="kubectl get svc"
alias svcdesc="kubectl describe svc"

alias pullservices="cd ~/lwcode; git clone git@github.com:lacework/services"
alias gitbranchclean='git fetch -p && for branch in $(git branch -vv | grep ": gone]" | awk "{ print \$1 }"); do echo "Deleting branch $branch"; git branch -d $branch; done'
. "$HOME/.cargo/env"

# change directories
function cds() {
	cd ~/lwcode/services/$1
}
alias cdc="cd ~/lwcode"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias k="kubectl"
alias tup="tmux -CC new -A -s tmssh"

alias bazelrepin="CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index"
