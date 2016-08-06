
# Update Packages
sudo apt-get update

# Ensure HTTPS support is installed and available
sudo apt-get install apt-transport-https ca-certificates

# Add new GPG key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# Create New Docker Deb List
cp -i docker.list /etc/apt/sources.list.d/docker.list

# Update New Packages
sudo apt-get update

# Purge old repo
sudo apt-get purge lxc-docker

# Verify Apt policy
apt-cache policy docker-engine

# Add AUFS storage driver
sudo apt-get install linux-image-extra-$(uname -r)

# Install apparmor
apt-get install apparmor

# Install Docker
sudo apt-get install docker-engine

# Start Docker
sudo service docker start

# Add Docker Group
sudo groupadd docker

# Add user to Docker group
sudo usermod -aG docker $USER
