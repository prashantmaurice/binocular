# binocular
Multi Perspective Object Detection

<need to be filled>

# preRequisites

cuda - 8.0 or 9.0 (for tf v>1.5)

### Installation

We recommend using virtual env for installation
tensorflow instructions - https://www.tensorflow.org/install/install_linux#InstallingVirtualenv

tensorflow object detection API - https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md

```sh
$ pip install -r requirements.txt
```

## Training

We extracted frames from a video tracking objects in shelf for training our object tracking project.
Manually labelled the images with bounding boxes around the objects we wanted to track and prepared tf-record files for training.

we used a single shot detection (SSD) model pretrained on COCO dataset for training object detection.
The pretrained model can be found here -  https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md
