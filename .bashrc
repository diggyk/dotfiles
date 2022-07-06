# kube aliases
alias podlist="kubectl get pods"
alias poddesc="kubectl describe pod"
alias podlog="kubectl logs"
alias svclist="kubectl get svc"
alias svcdesc="kubectl describe svc"

alias pullservices="cd ~/lwcode; git clone git@github.com:lacework/services"
alias gitbranchclean='git fetch -p && for branch in $(git branch -vv | grep ": gone]" | awk "{ print \$1 }"); do echo "Deleting branch $branch"; git branch -d $branch; done'
. "$HOME/.cargo/env"
