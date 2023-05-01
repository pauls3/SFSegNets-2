#!/usr/bin/env bash
# echo "Running inference on" ${1}
# echo "Saving Results :" ${2}


# --snapshot pretrained_models/railsem19_cityscapes_mapillary_epoch_252_mean-iou_0.68545.pth \
# --demo_folder /home/stanik/rtis_lab/data/RailSem19/custom_split/test_images
# python3 demo_floder.py \
#     --arch network.sfnet_resnet.DeepR18_SF_deeply \
#     --save_dir logs/rr22_dump_rs19_test/no_eval_test_0 \
#     --snapshot pretrained_models/rtisrail22_sfnet_resnet18_mean-iu_0.88745.pth \
#     --demo_folder /shared/rtis_lab/data/RailSem19/custom_split/test_images/


python3 demo_floder.py \
    --arch network.sfnet_resnet.DeepR18_SF_deeply \
    --save_dir logs/rr22_rs19_trainVal_test-no-eval_vid-1-signs-0 \
    --snapshot pretrained_models/rs19_rtisrail22_trainVal_mean-iu_0.69496.pth \
    --demo_folder /home/stanik/repos/SFSegNets-3/SFSegNets-2/test_data/vid_1_signs_0/