export KOPS_STATE_STORE=s3://clusters.prod.datasaker.io

key=$1

function info() {
    kubectl get node -o="custom-columns=Node:.metadata.labels.kops\.k8s\.io/instancegroup,Status:.status.conditions[-1].type,IP:.status.addresses[0].address,Zone:.metadata.labels.topology\.kubernetes\.io/zone,Size:.metadata.labels.node\.kubernetes\.io/instance-type,Host:.metadata.labels.kubernetes\.io/hostname,Taints:.spec.taints[*].key"
}

function backup() {
    time=$(date +"%F-%I:%M:%S")
    list=$(kops get ig --name k8s-prod.datasaker.io)

    echo "$list" | awk 'NR>1 {print $1}' > ec2list-${time}
    list="./ec2list-${time}"


    while IFS= read -r list;
    do
      kops get ig --name k8s-prod.datasaker.io ${list} -o yaml > ${list}-${time}.yaml
    done <"${list}"

    rm -rf ./ec2list-"${time}"
}

if [ "${key}" == "info" ]
then
    info
elif [ "${key}" == "backup" ]
then
    backup
fi
