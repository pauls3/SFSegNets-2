# CUDA_VISIBLE_DEVICES="3" sh ./scripts/flame/dump_folder.sh

#!/usr/bin/env bash
# echo "Running inference on" ${1}
# echo "Saving Results :" ${2}
# --snapshot pretrained_models/railsem19_cityscapes_mapillary_epoch_252_mean-iou_0.68545.pth \
# --demo_folder /home/stanik/rtis_lab/data/RailSem19/custom_split/test_images
python3 demo_floder.py \
    --arch network.sfnet_resnet.DeepR18_SF_deeply \
    --save_dir logs/sfnet_resnet18_flame_test_dump_0 \
    --snapshot pretrained_models/flame/best_epoch_467_mean-iu_0.91286.pth \
    --demo_folder /shared/rtis_lab/data/FLAME/custom_split/test_images/