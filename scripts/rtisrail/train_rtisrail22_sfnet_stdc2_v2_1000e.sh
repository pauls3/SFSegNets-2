#!/usr/bin/env bash
#   --class_uniform_pct 0.5 \
EXP_DIR=./sfnets/stdc2_SFV2_spatial_atten_rtisrail22
mkdir -p ${EXP_DIR}
python3 -m torch.distributed.launch --nproc_per_node=2 --master_port 29501  train.py \
  --dataset rtisrail22 \
  --cv 0 \
  --arch network.sfnet_stdcnet.AlignedSTDC2_SFV2_spatial_atten \
  --class_uniform_pct 0.01 \
  --class_uniform_tile 1024 \
  --lr 0.0015 \
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
  --bs_mult 4 \
  --apex \
  --exp rtisrail22_SFsegnet_stdc2 \
  --ckpt ${EXP_DIR}/ \
  --tb_path ${EXP_DIR}/