systemctl stop docker
systemctl stop containerd
wget https://download.docker.com/linux/static/stable/x86_64/docker-24.0.6.tgz
tar xzvf docker-24.0.6.tgz
cp docker/* /usr/bin/
cp docker/* /usr/sbin/
wget https://raw.githubusercontent.com/containerd/containerd/main/containerd.service -O /usr/lib/systemd/system/containerd.service
sed -i 's/local\///g' /usr/lib/systemd/system/containerd.service
wget https://raw.githubusercontent.com/moby/moby/master/contrib/init/systemd/docker.service -O /usr/lib/systemd/system/docker.service
wget https://raw.githubusercontent.com/moby/moby/master/contrib/init/systemd/docker.socket -O /usr/lib/systemd/system/docker.socket
systemctl daemon-reload
systemctl start containerd
systemctl start docker