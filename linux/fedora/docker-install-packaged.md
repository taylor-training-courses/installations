# Install Docker on Fedora Linux

Tested with Fedora 32

```bash
sudo dnf update -y
sudo dnf remove -y docker
sudo dnf install -y moby-engine docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker <your-user>
sudo groups <your-user>
docker --version
docker-compose --version
```
