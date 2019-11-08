#!/bin/bash

pip3 install -r requirements.txt

wget https://iliakplv-ml-public.s3-ap-southeast-2.amazonaws.com/backend.h5
wget https://iliakplv-ml-public.s3-ap-southeast-2.amazonaws.com/fish_dataset.zip
unzip fish_dataset.zip

# python3 gen_anchors.py -c config.json

nohup python3 train.py -c config.json > train.log 2>&1 &

echo $! > train_pid
