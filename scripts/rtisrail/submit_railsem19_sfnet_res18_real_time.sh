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
    --ckpt_path logs/pretrained_railsem19_test_2 \
    --snapshot pretrained_models/rtisrail22_sfnet_resnet18_mean-iu_0.87004.pth
