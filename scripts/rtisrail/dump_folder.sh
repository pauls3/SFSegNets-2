#!/usr/bin/env bash
# echo "Running inference on" ${1}
# echo "Saving Results :" ${2}
# --snapshot pretrained_models/railsem19_cityscapes_mapillary_epoch_252_mean-iou_0.68545.pth \
# --demo_folder /home/stanik/rtis_lab/data/RailSem19/custom_split/test_images
python3 demo_floder.py \
    --arch network.sfnet_stdcnet.AlignedSTDC2_SFV2_spatial_atten \
    --save_dir logs/railsem19_pretrained_cityscapes_0/no_eval_test_3 \
    --snapshot pretrained_models/rs19_sfnetlite_sdvc2_mean-iu_0.74175.pth \
    --demo_folder /shared/rtis_lab/data/RailSem19/custom_split/test_images/