#!/bin/bash

option_base_images=false
option_image="."
option_push=false
primary_distribution="centos"
verbose="-q"

build() {
	IFS='/' read -r -a parts <<< "$2"

	build_tag="keto/${parts[1]}:build"
	directory=$(dirname $file)
	tags=()

	if [ "$1" == "base" ]; then
		tags=("keto/${parts[1]}:latest" "keto/${parts[1]}:${parts[2]}")
	else
		if [ "${parts[2]}" == "$primary_distribution" ]; then
			tags+=("keto/${parts[1]}:latest")
		fi

		if [ "${parts[4]}" == "Dockerfile" ]; then
			tags+=("keto/${parts[1]}:${parts[2]}")
			tags+=("keto/${parts[1]}:${parts[3]}-${parts[2]}")
			if [ "${parts[2]}" == "$primary_distribution" ]; then
				tags+=("keto/${parts[1]}:${parts[3]}")
			fi
		elif [ "${parts[3]}" == "Dockerfile" ]; then
			tags+=("keto/${parts[1]}:${parts[2]}")
		fi
	fi

	if [ "${tags[0]}" ]; then
		echo -e "Building '${parts[1]}'.."
		docker build -t $build_tag $verbose $directory

		for tag in "${tags[@]}"
		do
			docker tag $build_tag $tag
			if [ "$option_push" == "true" ]; then
				docker push $tag
			fi
		done
		echo -e ""
	fi
}

clean() {
	echo -e "Cleaning.."
	docker system prune -a
	exit
}

usage() { echo "Usage: $0 [-b] [-c] [-i image_name] [-p] [-v]" 1>&2; exit 1; }

while getopts "bci:pv" option
do
	case "${option}"
	in
		b)
			option_base_images=true
			;;
		c)
			clean
			;;
		i)
			option_image="./${OPTARG}"
			;;
		p)
			option_push=true
			;;
		v)
			verbose=""
			;;
		*)
			usage
			;;
	esac
done

if [ "$option_push" == "true" ]; then
	docker login
fi

if [ "$option_base_images" == "true" ]; then
	for file in $(find base_image -iname "Dockerfile")
	do
		build "base" $file
	done
fi

for file in $(find $option_image -iname "Dockerfile" ! -path "*base_image*")
do
	build "image" $file
done
