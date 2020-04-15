pipeline="opensfm"
# pipeline="yan"
# pipeline="wilson"

# config="local+aam+2.0"
# config="local+rmatches+2.0"
config="original+rmatches+NA"
# config="original+aam+60.0"

# declare -a tanksandtemples_datasets=("TanksAndTemples/Barn" "TanksAndTemples/Caterpillar" "TanksAndTemples/Church" "TanksAndTemples/Courthouse" "TanksAndTemples/Ignatius" "TanksAndTemples/Meetingroom" "TanksAndTemples/Truck")
# declare -a tanksandtemples_datasets=("TanksAndTemples/Barn" "TanksAndTemples/Caterpillar" "TanksAndTemples/Ignatius" "TanksAndTemples/Meetingroom" "TanksAndTemples/Truck")
# declare -a tanksandtemples_datasets=("TanksAndTemples/Truck" "TanksAndTemples/Church" "TanksAndTemples/Courthouse")

declare -a tanksandtemples_datasets=("TanksAndTemples/Auditorium" "TanksAndTemples/Ballroom" "TanksAndTemples/Courtroom" "TanksAndTemples/Family" "TanksAndTemples/Francis" "TanksAndTemples/Horse" "TanksAndTemples/Lighthouse" "TanksAndTemples/M60" "TanksAndTemples/Museum" "TanksAndTemples/Palace" "TanksAndTemples/Panther" "TanksAndTemples/Playground" "TanksAndTemples/Temple" "TanksAndTemples/Train")

# declare -a uiuctag_datasets=("UIUCTag/ece_floor2_hall" "UIUCTag/ece_floor3_loop" "UIUCTag/ece_floor3_loop_ccw" "UIUCTag/ece_floor3_loop_cw" "UIUCTag/ece_floor5" "UIUCTag/ece_floor5_stairs" "UIUCTag/ece_floor5_wall" "UIUCTag/ece_stairs" "UIUCTag/yeh_day_all" "UIUCTag/yeh_day_atrium" "UIUCTag/yeh_day_backward" "UIUCTag/yeh_day_forward" "UIUCTag/yeh_night_all" "UIUCTag/yeh_night_atrium" "UIUCTag/yeh_night_backward" "UIUCTag/yeh_night_forward")
declare -a uiuctag_datasets=("UIUCTag/yeh_day_atrium")

# declare -a yan_datasets=("Yan/books" "Yan/cereal" "Yan/cup" "Yan/desk" "Yan/oats" "Yan/street")
declare -a yan_datasets=( "Yan/cup" )

declare -a eth3d_datasets=( "ETH3D/botanical_garden" "ETH3D/boulders" "ETH3D/bridge" "ETH3D/courtyard" "ETH3D/delivery_area" "ETH3D/door" "ETH3D/electro" "ETH3D/exhibition_hall" "ETH3D/facade" "ETH3D/kicker" "ETH3D/lecture_room" "ETH3D/living_room" "ETH3D/lounge" "ETH3D/meadow" "ETH3D/observatory" "ETH3D/office" "ETH3D/old_computer" "ETH3D/pipes" "ETH3D/playground" "ETH3D/relief" "ETH3D/relief_2" "ETH3D/statue" "ETH3D/terrace" "ETH3D/terrace_2" "ETH3D/terrains" )
# declare -a eth3d_datasets=( "ETH3D/botanical_garden" )

declare -a reconstruct_datasets=( "Reconstruct/Clark" "Reconstruct/Crane")

# declare -a heinly_datasets=("Heinly/alexander_nevsky_cathedral" "Heinly/arc_de_triomphe" "Heinly/berliner_dom" "Heinly/big_ben" "Heinly/brandenburg_gate" "Heinly/church_on_spilled_blood" "Heinly/indoor" "Heinly/radcliffe_camera")
declare -a heinly_datasets=("Heinly/alexander_nevsky_cathedral" "Heinly/arc_de_triomphe" "Heinly/big_ben" "Heinly/brandenburg_gate" "Heinly/church_on_spilled_blood" "Heinly/indoor" "Heinly/radcliffe_camera")

# declare -a misc_datasets=("Misc/Temple" "Misc/GuangzhouStadium")
declare -a misc_datasets=("Misc/Temple")

# datasets=( "${yan_datasets[@]}" "${uiuctag_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${uiuctag_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${yan_datasets[@]}" "${uiuctag_datasets[@]}" )
# datasets=( "${uiuctag_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${tanksandtemples_datasets[@]}" )
datasets=( "${eth3d_datasets[@]}" )
# datasets=( "${eth3d_datasets[@]}" "${heinly_datasets[@]}" )
# datasets=( "${reconstruct_datasets[@]}" )

# datasets=( "${eth3d_datasets[@]}" "${tanksandtemples_datasets[@]}" )
# datasets=( "${tanksandtemples_datasets[@]}" )

# modes=( "calculate_features" "reconstruction" )

for i in "${datasets[@]}"; do
  dset=(${i//// });
  root=${dset[0]};
  sequence=${dset[1]};

  dataset=$(echo "/data/$pipeline/$root/$sequence/");
  # dataset=$(echo "/data-extra/$pipeline/$root/$sequence/");
  echo $dataset;
  rm $dataset/profile.log;
  rm $dataset/config.yaml;
  rm -R $dataset/reports

  # ./bin/opensfm extract_metadata $dataset
  # ./bin/opensfm detect_features $dataset
  # ./bin/opensfm evaluate_vt_rankings $dataset
  # ./bin/opensfm match_features $dataset
  # ./bin/opensfm create_tracks $dataset
  # ./bin/opensfm calculate_features $dataset
  # ./bin/opensfm create_tracks_classifier $dataset
  # ./bin/opensfm create_aam $dataset
  ./bin/opensfm reconstruct $dataset;
  mv $dataset/profile.log $dataset/profile-$config.log;
  mv $dataset/reports $dataset/reports-$config;
done