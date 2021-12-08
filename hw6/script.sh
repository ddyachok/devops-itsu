sudo yum install epel-release -y > /dev/null
sudo yum install lvm2 -y > /dev/null

sudo pvcreate /dev/sdb1 /dev/sdc1
sudo pvcreate /dev/sdd1 /dev/sde1

sudo vgcreate vol1 /dev/sdb1 /dev/sdc1
sudo vgcreate vol2 /dev/sdd1 /dev/sde1

sudo mkfs.ext4 /dev/vol1/vol1
sudo mkfs.ext4 /dev/vol2/vol2

sudo mkdir /mnt/vol1
sudo mkdir /mnt/vol2

sudo lvcreate -n vol1 -l 100%FREE vol1
sudo lvcreate -n vol2 -l 100%FREE vol2

sudo mount /dev/vol1/vol1 /mnt/vol1
sudo mount /dev/vol2/vol2 /mnt/vol2