alias gitbranchclean='git fetch -p && for branch in $(git branch -vv | grep ": gone]" | awk "{ print \$1 }"); do echo "Deleting branch $branch"; git branch -d $branch; done'
. "$HOME/.cargo/env"

# change directories
function cds() {
	cd ~/lwcode/services/$1
}
function cdc() {
	cd ~/lwcode/$1
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias k="kubectl"
alias tup="tmux -CC new -A -s tmssh"

alias tshlogin="tsh login --proxy lacework.teleport.sh:443 --auth lacework_okta"

alias bazelrepin="CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index"
alias bazelgen="bazel run @rules_rust//tools/rust_analyzer:gen_rust_project"

export PATH=$PATH:~/bin
export ETCDCTL_API=3

export PATH=$HOME/.istioctl/bin:$PATH
