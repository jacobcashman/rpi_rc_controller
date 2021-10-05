#!/bin/bash

catkin_make -j 1 -DCMAKE_XCC_FLAGS="--param ggc-min-expand=20"
