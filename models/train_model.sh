cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
protoc object_detection/protos/*.proto --python_out=.


cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# From the tensorflow/models/research/ directory
python object_detection/train.py \
    --logtostderr \
    --pipeline_config_path=/home/maurice/ssd/binocular/models/ssd_mobilenet_v2_class11.config \
    --train_dir=/home/maurice/ssd/binocular/logs/ssd_mobilenet_v2_coco_class11

