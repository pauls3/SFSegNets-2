#!/usr/bin/env bash
now=$(date +"%Y%m%d_%H%M%S")
EXP_DIR=./sfnets/sf_r18_v2_spatial_atten_1000e
mkdir -p ${EXP_DIR}
python -m torch.distributed.launch --nproc_per_node=4 --master_port 29501 train.py \
  --dataset rtisrail22 \
  --cv 0 \
  --arch network.sfnet_resnet.DeepR18_SFV2_deeply_dsn_FA_Atten \
  --class_uniform_pct 0.5 \
  --class_uniform_tile 1024 \
  --lr 0.0021 \
  --lr_schedule poly \
  --poly_exp 1.0 \
  --repoly 1.5  \
  --rescale 1.0 \
  --syncbn \
  --sgd \
  --ohem \
  --fpn_dsn_loss \
  --crop_size 1024 \
  --scale_min 0.5 \
  --scale_max 2.0 \
  --color_aug 0.25 \
  --gblur \
  --max_epoch 400 \
  --wt_bound 1.0 \
  --bs_mult 8 \
  --apex \
  --exp rtisrail22_SFsegnet_res18 \
  --snapshot pretrained_models/sfnet_v2_r18_coarst_boost.pth \
  --ckpt ${EXP_DIR}/ \
  --tb_path ${EXP_DIR}/ \
