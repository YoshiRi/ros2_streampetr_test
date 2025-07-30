#!/bin/sh
mkdir -p $HOME/autoware_data/camera_streampetr
for f in simplify_extract_img_feat simplify_position_embedding simplify_pts_head_memory; do
  wget -O $HOME/autoware_data/camera_streampetr/${f}.onnx \
    https://download.autoware-ml-model-zoo.tier4.jp/autoware-ml/models/streampetr/streampetr-vov99/t4base/v1.7/${f}.onnx
done
ls -lh /home/autoware/autoware_data/camera_streampetr
# mkdir -p /opt/autoware/mlmodels
# cp /home/autoware/autoware_data/camera_streampetr/*.onnx /opt/autoware/mlmodels/
# ls -lh /opt/autoware/mlmodels