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
    --ckpt_path logs/pretrained_railsem19_test_3 \
    --snapshot logs/sfnet_resnet18_rtisrail22_pretrained_rs19_miou-0.753/rtisrail22_SFnet_res18_train_3/rtis-network.sfnet_resnet.DeepR18_SF_deeply_apex_T_bblur_T_bs_mult_8_class_uniform_tile_1080_crop_size_1080_cv_0_dataset_rtisrai_lr_0.0005_ohem_T_PT_sbn/best_epoch_1496_mean-iu_0.87857.pth
