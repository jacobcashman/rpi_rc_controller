#!/bin/bash
rosparam set /cloud_ip_address 68.181.32.166
rosparam set /cloud_port_number 1031
rosparam set /frame os1_lidar
rosparam set /pc_topic /os1_cloud_node/points
rosparam set /imu_topic /os1_cloud_node/imu
rosparam set /input_bag /home/ubuntu/lidar-01_10_2020-1.bag
rosparam set /compressed_bag /home/ubuntu/ouster_compressed.bag
rosparam set /operation_mode online
rosparam set /send_over_network true
