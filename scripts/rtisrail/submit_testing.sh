#!/usr/bin/env bash
# echo "Running inference on" ${1}
# echo "Saving Results :" ${2}
# --snapshot pretrained_models/rs19_4000_epoch_274_mean-iu_0.57821.pth

python3 eval.py \
    --dataset rtisrail22 \
    --arch network.sfnet_resnet.DeepR18_SF_deeply \
    --inference_mode whole \
    --scales 1 \
    --split test \
    --dump_images \
    --ckpt_path logs/rr22_rs19_trainVal_test_1 \
    --snapshot pretrained_models/rs19_rtisrail22_trainVal_mean-iu_0.69496.pth
