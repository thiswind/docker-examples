#!/bin/bash

# Function to execute commands with status checks
execute_command() {
    echo "Executing: $1"
    if eval "$1"; then
        echo "Success: $1"
    else
        echo "Error: Failed to execute $1"
        exit 1
    fi
}

# Execute each command

execute_command "sudo apt-key del 7EA0A9C3F273FCD8" # 清除旧的密钥，如果有冲突项

# 导入正确的 GPG 公钥ID（8D81803C0EBFCD88）
execute_command "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8D81803C0EBFCD88"

execute_command "sudo apt-get update -o Acquire::AllowInsecureRepositories=true"
sudo rm /var/lib/apt/lists/*
sudo apt-get clean
sudo apt-get update

execute_command "sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin"

echo "All commands executed successfully!"
