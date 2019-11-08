#!/bin/bash

# python3 gen_anchors.py -c config.json

nohup python3 train.py -c config.json > train.log 2>&1 &

echo $! > train_pid
