# Scene Tracking over a Glance

### Introduction
This repository contains code for *Realtime Tracking with a Deep Relations of Objects in Scene over time*. We extend general object detection framework and camera tracking techniques to stitch a scene together over 3D space and generate context vector of the entire scene. 

![Alt Text](https://github.com/prashantmaurice/binocular/blob/master/data/main.gif)

### Dependencies

The code is compatible with Python 3.4 and tensorflow 1.2.1.
cuda - 8.0 or 9.0 (for tf v>1.5)

### Installation

We recommend using virtual env for installation
tensorflow instructions - https://www.tensorflow.org/install/install_linux#InstallingVirtualenv

tensorflow object detection API - https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/installation.md

Clone the repository
```
git clone https://github.com/nwojke/deep_sort.git
```

```sh
$ pip install -r requirements.txt
```

Additional checkpoint files are available in logs folder

## Object Detection

We extracted frames from a video tracking objects in shelf for training our object tracking project.
Manually labelled the images with bounding boxes around the objects we wanted to track and prepared tf-record files for training.

we used a single shot detection (SSD) model pretrained on COCO dataset for training object detection.
The pretrained model can be found here -  https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/detection_model_zoo.md

## Camera Perspective Tracking

Perspective stitching require us to build 3D Perspective Shift. When seen from 2D, Scene perspective shift is generally non-linear, but frame by frame Perspective Map can be assumed to be linear in 2D and hence we can use it to stitch 2 Successive Frames. These matches are now combined using Nearest Neighbour Search over IOU on top of Transposed View. This uses Object Detection Boxes and uses temporal information to increase accuracy. 

![Alt Text](https://github.com/prashantmaurice/binocular/blob/master/data/traces.gif)

### Problems Solved in This approach:
 * If ProductX was appearing from 50-70 frames under different perspectives,  we should be able to stitch them into a single product Trail
 * If ProductX was appearing for 0-30 frames and disappear from 30-50 and reappear after that , we should have the ability to stitch the two object trails together
 * If ProductX was appearing for 0-20 frame and is blocked by a look-a-like ProductY of same category from 20-30 Frames and reappear after that from behind, we should club those two trails together


