sudo mkdir -p /etc/docker
# sudo vi /etc/docker/daemon.json

echo "restart docker"
sudo systemctl daemon-reload
sudo systemctl restart docker

echo "curl -v http://registry-1.docker.io/v2/"
curl -v http://registry-1.docker.io/v2/

