
echo "Downloading nuscences from Sever..."

path="/data/wanglin/Source/nuScenes/"

all=""

for i in '01' '02' '03' '04' '05' '06' '07' '08'
do      
	if [ ${i} = '01' ]; then
		file="v1.0-trainval${i}_blobs.tar"
	elif [ ${i} = '02' ]; then
                file="v1.0-trainval${i}_blobs.tar"
	else
		file="v1.0-trainval${i}_blobs.tgz"
	fi

	temp=${path}${file}
	# echo ${i}
	all=${all}${temp}
	
	
	if [ ${i} != '10' ]; then
		# echo "in"
		all=${all}" "
	fi
	

done

echo ${all}


scp -r wanglin@172.23.148.92:${all} ./

