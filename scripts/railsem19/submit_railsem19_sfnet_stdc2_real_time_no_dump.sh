#!/usr/bin/env bash
# echo "Running inference on" ${1}
# echo "Saving Results :" ${2}

python3 eval.py \
    --dataset railsem19 \
    --arch network.sfnet_stdcnet.AlignedSTDC2_SFV2_spatial_atten \
    --inference_mode whole \
    --scales 1 \
    --split test \
    --ckpt_path logs/pretrained_railsem19_test_4 \
    --snapshot pretrained_models/rs19_sfnetlite_sdvc2_mean-iu_0.74175.pth
