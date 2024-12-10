#!/bin/bash

# 我现在要列出所有的用户名为 thiswind 的进程的进程号
# ps aux | grep "python" | grep -v "grep"

ps aux | grep "python" | grep -v "grep" | awk '{print $2}'