sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
  {
    "registry-mirrors": ["https://hub-mirror.c.163.com"]
  }
EOF

sudo systemctl daemon-reload
sudo systemctl restart docker