# Install Commands

Tested on Ubuntu 20.04

```bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get remove -y docker containerd runc
sudo apt-get install -y docker.io docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker <your-user>
sudo groups <your-user>
docker --version
docker-compose --version
```


