# Install Commands

Install Docker CE official binaries

```bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get remove -y docker docker.io containerd runc docker-compose
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install -y docker-ce
```

Go to  https://github.com/docker/compose
Then Releases - find latest release - assets - Download `docker-compose-Linux-x86_64`

```bash
sudo mv ~/Downloads/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo systemctl start docker
sudo systemctl enable docker

sudo usermod -aG docker <your-user>
sudo groups <your-user>

docker --version
docker-compose --version
```
