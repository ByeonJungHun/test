#!/bin/bash

# 이미지 리스트
images_list="./imageslist"

# repo
nexus="10.10.31.243:5000"
dkrepo="exemdev2"

# release version
repo=$1
version=rel$2

nexus() {

# images pull & tag & push nexus
while IFS= read -r image_name; do

    echo -e "\n\n\033[93m${image_name}:${version} pulling!\n\n\033[0m"
    docker pull ${nexus}/cmoa/${image_name}:${version}

    echo -e "\n\n\033[93${image_name}:${version} taging!\n\n\033[0m"
    docker tag ${nexus}/cmoa/${image_name}:${version} ${nexus}/cmoa3/${image_name}:${version}

    echo -e "\n\n\033[93${image_name}:${version} push!\n\n\033[0m"
    docker push ${nexus}/cmoa3/${image_name}:${version}

done <"${images_list}"

}

dockerhub() {

# images pull & tag & push nexus
while IFS= read -r image_name; do

    echo -e "\n\033[93m${image_name}:${version} pulling!\n\033[0m"
    docker pull ${nexus}/cmoa/${image_name}:${version}

    echo -e "\n\033[93${image_name}:${version} taging!\n\033[0m"
    docker tag ${nexus}/cmoa/${image_name}:${version} ${dkrepo}/${image_name}:${version}

    echo -e "\n\033[93${image_name}:${version} push!\n\033[0m"
    ddocker push ${dkrepo}/${image_name}:${version}

done <"${images_list}"

}

main(){
    if [ "${repo}" = "nexus" ]
        then
            nexus
    elif [ "${repo}" = "docker" ]
        then
            dockerhub
    elif [ "${repo}" != "nexus" ] && [ "${repo}" != "docker" ]
        then
            echo -e "\n\033[93m./rel.sh nexus version\033[0m"
            echo -e "\033[93m./rel.sh docker version\033[0m"
    fi
}

main
