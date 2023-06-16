export CLICOLOR=1 # 터미널 컬러 활성화<br>
export KUBECONFIG=~/.kube/config:~/.kube/dsconfig:~/.kube/cloudmoa # k8s context 등록<br>
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH" # krew 등록<br>
export AWS_DEFAULT=elppa # aws default profile 설정<br>
export AWS_PROFILE=elppa # kops default aws profile 설정<br>
<br>
alias ll="ls -l"<br>
alias k="kubectl"<br>
alias clone="/Users/byeonjunghun/Documents/script/clone.sh"<br>
alias amisearch="/Users/byeonjunghun/Documents/script/amisearch"<br>
alias awsnode="/Users/byeonjunghun/Documents/script/awsnode.sh"<br>
alias push="/Users/byeonjunghun/Documents/script/rel.sh"
