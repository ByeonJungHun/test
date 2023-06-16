export CLICOLOR=1 # 터미널 컬러 활성화
export KUBECONFIG=~/.kube/config:~/.kube/dsconfig:~/.kube/cloudmoa # k8s context 등록
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH" # krew 등록
export AWS_DEFAULT=elppa # aws default profile 설정
export AWS_PROFILE=elppa # kops default aws profile 설정

alias ll="ls -l"
alias k="kubectl"
alias clone="/Users/byeonjunghun/Documents/script/clone.sh"
alias amisearch="/Users/byeonjunghun/Documents/script/amisearch"
alias awsnode="/Users/byeonjunghun/Documents/script/awsnode.sh"
alias push="/Users/byeonjunghun/Documents/script/rel.sh"
