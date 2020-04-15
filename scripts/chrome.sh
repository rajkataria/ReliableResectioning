pipeline="opensfm"
# pipeline="colmap"
# pipeline="yan"
# pipeline="wilson"

declare -a yan_datasets=("Yan/books" "Yan/cereal" "Yan/cup" "Yan/desk" "Yan/oats" "Yan/street")
# declare -a yan_datasets=("Yan/oats")

declare -a uiuctag_datasets=("UIUCTag/ece_floor2_hall" "UIUCTag/ece_floor3_loop" "UIUCTag/ece_floor3_loop_ccw" "UIUCTag/ece_floor3_loop_cw" "UIUCTag/ece_floor5" "UIUCTag/ece_floor5_stairs" "UIUCTag/ece_floor5_wall" "UIUCTag/ece_stairs" "UIUCTag/yeh_day_all" "UIUCTag/yeh_day_atrium" "UIUCTag/yeh_day_backward" "UIUCTag/yeh_day_forward" "UIUCTag/yeh_night_all" "UIUCTag/yeh_night_atrium" "UIUCTag/yeh_night_backward" "UIUCTag/yeh_night_forward")
# declare -a uiuctag_datasets=("UIUCTag/yeh_day_all")


declare -a duplicate_structures_datasets=("Heinly/alexander_nevsky_cathedral" "Heinly/arc_de_triomphe" "Heinly/big_ben" "Heinly/brandenburg_gate" "Heinly/church_on_spilled_blood" "Heinly/indoor" "Heinly/radcliffe_camera")

declare -a tanksandtemples_datasets=("TanksAndTemples/Barn" "TanksAndTemples/Caterpillar" "TanksAndTemples/Church" "TanksAndTemples/Courthouse" "TanksAndTemples/Ignatius" "TanksAndTemples/Meetingroom" "TanksAndTemples/Truck")
# declare -a tanksandtemples_datasets=("TanksAndTemples/Auditorium" "TanksAndTemples/Ballroom" "TanksAndTemples/Courtroom" "TanksAndTemples/Family" "TanksAndTemples/Francis" "TanksAndTemples/Horse" "TanksAndTemples/Lighthouse" "TanksAndTemples/M60" "TanksAndTemples/Museum" "TanksAndTemples/Palace" "TanksAndTemples/Panther" "TanksAndTemples/Playground" "TanksAndTemples/Temple" "TanksAndTemples/Train")
# declare -a tanksandtemples_datasets=("TanksAndTemples/Barn")

# declare -a eth3d_datasets=( "ETH3D/botanical_garden" "ETH3D/boulders" "ETH3D/bridge" "ETH3D/courtyard" "ETH3D/delivery_area" "ETH3D/door" "ETH3D/electro" "ETH3D/exhibition_hall" "ETH3D/facade" "ETH3D/kicker" "ETH3D/lecture_room" "ETH3D/living_room" "ETH3D/lounge" "ETH3D/meadow" "ETH3D/observatory" "ETH3D/office" "ETH3D/old_computer" "ETH3D/pipes" "ETH3D/playground" "ETH3D/relief" "ETH3D/relief_2" "ETH3D/statue" "ETH3D/terrace" "ETH3D/terrace_2" "ETH3D/terrains" )
declare -a eth3d_datasets=( "ETH3D/courtyard" "ETH3D/delivery_area" "ETH3D/electro" "ETH3D/facade" "ETH3D/kicker" "ETH3D/meadow" "ETH3D/office" "ETH3D/pipes" "ETH3D/playground" "ETH3D/relief" "ETH3D/relief_2" "ETH3D/terrace" "ETH3D/terrains" )

declare -a custom_datasets=("Yan/cup" "Yan/street" "UIUCTag/ece_floor3_loop_cw" "UIUCTag/ece_stairs" "TanksAndTemples/Caterpillar" "TanksAndTemples/Meetingroom")

declare -a misc_datasets=("Misc/Temple")

# datasets=( "${yan_datasets[@]}" "${eth3d_datasets[@]}" "${uiuctag_datasets[@]}" "${duplicate_structures_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${yan_datasets[@]}" "${uiuctag_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${eth3d_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${tanksandtemples_datasets[@]}")
datasets=( "${tanksandtemples_datasets[@]}" )

for i in "${datasets[@]}"; do
  for j in `seq 1 1`; do
    dset=(${i//// });
    root=${dset[0]};
    sequence=${dset[1]};
    unameOut="$(uname -s)"
    case "${unameOut}" in
        Linux*)     machine=Linux;;
        Darwin*)    machine=Mac;;
        CYGWIN*)    machine=Cygwin;;
        MINGW*)     machine=MinGw;;
        *)          machine="UNKNOWN:${unameOut}"
    esac
    
    echo $machine
    if [ "$machine" == "Linux" ]; then
        command='google-chrome --incognito '
    else
        command='open -na "Google Chrome" --args --incognito '
    fi


    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction_gt.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-udt-False-dt-0.6-mkcip-0.15-mkcimin-7-mkcimax-12-recc-0.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-udt-False-dt-0.6-mkcip-0.15-mkcimin-7-mkcimax-12-recc-0.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-udt-True-dt-0.6-mkcip-0.15-mkcimin-6-mkcimax-14-recc-0.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-udt-True-dt-0.6-mkcip-0.2-mkcimin-6-mkcimax-14-recc-0.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-udt-True-dt-0.6-mkcip-0.15-mkcimin-7-mkcimax-12-recc-0.json"

    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-mdstc-mst-adaptive-distance-mdstv-0.5-mkcip-0.15-mkcimin-6-mkcimax-14-ust-False-recc-0.json"
    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-mdstc-mst-adaptive-distance-mdstv-0.5-mkcip-0.15-mkcimin-6-mkcimax-14-ust-True-recc-0.json"

    # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/classifier-datasets-bruteforce/$root/$sequence/reconstruction-imc-False-fm-False-wr-colmap-resc-NA-mdstc-mst-adaptive-distance-mdstv-1.0-mkcip-0.15-mkcimin-6-mkcimax-14-ust-True-recc-0.json"

    if [ "$pipeline" == "opensfm" ]; then
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_gt.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-mdstc-NA-mdstv-NA-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embedding-resc-NA-mdstc-NA-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-mdstc-distance-mdstv-0.3-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-mdstc-distance-mdstv-0.7-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embedding-resc-NA-mdstc-sp-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embedding-resc-NA-mdstc-aam-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embedding-resc-NA-mdstc-timestamp-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embedding-resc-NA-mdstc-rmatches-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embeddingablateorder-resc-NA-mdstc-aam-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-embeddingablatepose-resc-NA-mdstc-aam-mdstv-2.0-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"

        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-original-resectioning_distance_measure-rmatches-resectioning_parameter-NA.json"
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-local-resectioning_distance_measure-aam-resectioning_parameter-2.0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-original-resectioning_distance_measure-aam-resectioning_parameter-75.0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-original-resectioning_distance_measure-aam-resectioning_parameter-60.0.json"

        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/data-extra/$pipeline/$root/$sequence/reconstruction_gt.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/data-extra/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-local-resectioning_distance_measure-aam-resectioning_parameter-2.0.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/data-extra/$pipeline/$root/$sequence/reconstruction-supplimental-resectioning_type-original-resectioning_distance_measure-rmatches-resectioning_parameter-NA.json"
        
    elif [ "$pipeline" == "colmap" ]; then
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/opensfm/$root/$sequence/reconstruction_gt.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_colmap_baseline.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_opensfm_mds.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_colmap_mds.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_opensfm_sp_aam.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_opensfm_rmatches.json"
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_opensfm_aam.json"

        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_colmap_aam.json"

        # TEMP - only for UIUCTag
        # eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/UIUCTag-colmap-2/$sequence/reconstruction_colmap_baseline.json"
    elif [ "$pipeline" == "yan" ]; then
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_gt.json"
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-mdstc-yan-mdstv-NA-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
    elif [ "$pipeline" == "wilson" ]; then
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction_gt.json"
        eval $command"http://localhost:8888/viewer/reconstruction.html#file=/data/$pipeline/$root/$sequence/reconstruction-imc-False-fm-False-wr-original-resc-NA-mdstc-wilson-mdstv-NA-mkcip-0.15-mkcimin-1-mkcimax-auto-ust-True-recc-0.json"
    fi
    
  done;
done




# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction_gt.json
# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction-imc-False-wr-False-colmapr-False-gm-False-wfm-False-imt-False-spp-False.json
# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction-imc-False-wr-False-colmapr-True-gm-False-wfm-False-imt-False-spp-False.json
# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction-imc-False-wr-False-colmapr-True-gm-True-wfm-False-imt-False-spp-False.json
# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction-imc-False-wr-False-colmapr-True-gm-True-wfm-False-imt-False-spp-True.json
# open -a "Google Chrome" http://localhost:8888/viewer/reconstruction.html#file=/data/variance-exps/UIUCTag-1/ece_floor3_loop_ccw/reconstruction-imc-False-wr-False-colmapr-True-gm-False-wfm-False-imt-False-spp-True.json
