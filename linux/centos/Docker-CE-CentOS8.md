# Docker on CentOS 8

Installing docker on CentOS is more painful than it should be.


```bash
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
```

Go to https://download.docker.com/linux/centos/7/x86_64/stable/Packages/, download latest version of the containerd.io package (should show up in Downloads folder) or use wget/curl

```bash
sudo dnf localinstall ~/Downloads/containerd.io-<use tab completion>.rpm
rm ~/Downloads/containerd.io-<use tab completion>.rpm
sudo dnf install -y docker-ce
```
