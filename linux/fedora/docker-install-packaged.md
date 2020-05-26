# Install Docker on Fedora Linux

Tested with Fedora 32

```bash
sudo dnf update -y
sudo dnf remove -y docker  docker-client docker-client-latest docker-common docker-latest \
 docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine
sudo dnf install -y docker docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker <your-user>
sudo groups <your-user>
docker --version
docker-compose --version
```
