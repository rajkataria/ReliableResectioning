pipeline=$1
path=$2
second_path=${3:-""}
mvs_path='/hdd/Research/mvs-depth-completeness/'

epoch_time=$(date +%s%N)
directory=$(basename $path)
mvs_directory=$(basename $mvs_path)
opensfm_image="opensfm-docker-image-new-2"
colmap_image="colmap-docker-image-try-4"

if [[ $pipeline = "opensfm" ]] 
then
    echo "Running Docker for OpenSfM"
    if [[ $second_path = "" ]]
    then
        sudo docker run -it --name opensfm-$epoch_time -e DISPLAY=:0.0 \
            -v /tmp/.X11-unix:/tmp/.X11-unix -v $path:/$directory -v /usr/local/cuda-8.0:/usr/local/cuda-8.0 \
            -v $path/data:/data \
            -v $mvs_path:/$mvs_directory \
            --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl \
            -e DISPLAY=unix$DISPLAY \
            $opensfm_image
            # -v /usr/local/lib/python2.7/:/usr/local/lib/python2.7/ \
            # -v /usr/lib/python2.7/:/usr/lib/python2.7/ \
    else
        second_directory=$(basename $second_path)
        sudo docker run -it --name opensfm-$epoch_time -e DISPLAY=:0.0 \
            -v /tmp/.X11-unix:/tmp/.X11-unix -v $path:/$directory -v /usr/local/cuda-8.0:/usr/local/cuda-8.0 \
            -v $path/data:/data -v $second_path:/$second_directory \
            -v $second_path/data:/data2 \
            -v $mvs_path:/$mvs_directory \
            --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl \
            -e DISPLAY=unix$DISPLAY \
            $opensfm_image
    fi
elif [[ $pipeline = "colmap" ]] 
then
    echo "Running Docker for COLMAP"
    if [[ $second_path = "" ]]
    then
        sudo docker run -it --name opensfm-$epoch_time -e DISPLAY=:0.0 \
            -v /tmp/.X11-unix:/tmp/.X11-unix -v $path:/$directory -v /usr/local/cuda-8.0:/usr/local/cuda-8.0 \
            -v $path/data:/data \
            -v $mvs_path:/$mvs_directory \
            -v /usr/:/usr/ \
            --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl \
            -e DISPLAY=unix$DISPLAY \
            $colmap_image
    else
        second_directory=$(basename $second_path)
        sudo docker run -it --name opensfm-$epoch_time -e DISPLAY=:0.0 \
            -v /tmp/.X11-unix:/tmp/.X11-unix -v $path:/$directory -v /usr/local/cuda-8.0:/usr/local/cuda-8.0 \
            -v $path/data:/data -v $second_path:/$second_directory \
            -v $second_path/data:/data2 \
            -v $mvs_path:/$mvs_directory \
            -v /usr/:/usr/ \
            --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl \
            -e DISPLAY=unix$DISPLAY \
            $colmap_image
    fi
else
    echo "Please specify a valid SfM pipeline!"
fi

