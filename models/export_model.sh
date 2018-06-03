cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
protoc object_detection/protos/*.proto --python_out=.


cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# From the tensorflow/models/research/ directory
python object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path=/home/maurice/ssd/binocular/models/ssd_mobilenet_v1_class11.config \
    --trained_checkpoint_prefix=/home/maurice/ssd/binocular/logs/ssd_mobilenet_v1_coco_class11/model.ckpt-15946 \
    --output_directory=/home/maurice/ssd/binocular/exports/ssd_mobilenet_v1_coco_class11
