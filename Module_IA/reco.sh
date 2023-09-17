#!/bin/bash
edgtpu_detect --source /dev/video1:YUY2:800x600:24/1 --model yolov5/runs/train/exp/weights/bets-fp16.tflite
