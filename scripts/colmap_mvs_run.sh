dataset=$1


# config="colmap_aam"
# config="opensfm_aam"
# config="baseline"

config="baseline_aligned"
# config="colmap_aam_aligned"
# config="opensfm_aam_aligned"
# config="opensfm_baseline_aligned"

dense_folder="dense_"$config
# sparse_folder="sparse-"$config
# sparse_folder="sparse_opensfm_"$config
sparse_folder="sparse_"$config

mkdir $dataset/$dense_folder

        # --image_path $dataset/images \
        # --input_path $dataset/sparse/0 \
    # --input_path $dataset/dslr_calibration_jpg \

# Just in case the previous run exited erroneously
unlink $dataset/sparse

if [ -d "$dataset/sparse" ] 
then
    mv $dataset/sparse $dataset/sparse-baseline
    echo "Sparse folder exists"
else
    echo "Sparse folder doesn't exists"
fi

ln -s $dataset/$sparse_folder $dataset/sparse

colmap image_undistorter \
    --image_path $dataset/images \
    --input_path $dataset/sparse/ \
    --output_path $dataset/$dense_folder \
    --output_type COLMAP \
    --max_image_size 2000

colmap patch_match_stereo \
    --workspace_path $dataset/$dense_folder \
    --workspace_format COLMAP \
    --PatchMatchStereo.geom_consistency true

colmap stereo_fusion \
    --workspace_path $dataset/$dense_folder \
    --workspace_format COLMAP \
    --input_type geometric \
    --output_path $dataset/$dense_folder/fused.ply

unlink $dataset/sparse

    
