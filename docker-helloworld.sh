#!/bin/bash

sudo docker pull hello-world

# 第一步：运行一个简单的Docker容器来演示“Hello World”
echo "第一步：运行一个简单的Docker容器来演示“Hello World”"
sudo docker run hello-world | tee docker_hello_world_output.txt

# 第二步：显示容器的输出结果
echo "第二步：显示容器的输出结果"
cat docker_hello_world_output.txt
