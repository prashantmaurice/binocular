cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
protoc object_detection/protos/*.proto --python_out=.


cd /opt/anaconda/envs/py36/lib/python3.6/site-packages/tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

python object_detection/builders/model_builder_test.py
