#cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
#protoc object_detection/protos/*.proto --python_out=.


cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# From the tensorflow/models/research/ directory
python object_detection/eval.py \
    --logtostderr \
    --pipeline_config_path=/home/maurice/ssd/binocular/models/ssd_mobilenet_v1_class11.config \
    --eval_dir=/home/maurice/ssd/binocular/eval/ssd_mobilenet_v1_coco_class11 \
    --checkpoint_dir=/home/maurice/ssd/binocular/logs/ssd_mobilenet_v1_coco_class11
