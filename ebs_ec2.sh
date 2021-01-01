#list all volumes
df -h

#make file system with name ext3 at the location /dec/sdf
sudo mkfs -t ext3 /dec/sdf

#make directory in order to define the place for mounting the volume
sudo mkdir /mnt/data-store

#mount ebs
sudo mount /dev/sdf /mnt/data-store

#loading existing snapshot to second data-store instead of first one
#extend the filesystem partition in order to be able to utilize the entire size
#lsblk to show all of the volumes even those not mounted, but only attached.

#resize volume since the attached volume size is changed in aws gui for bigger 
sudo resize2fs /dev/nvme2n1

#check if file size has been changed
df -h

#check the contents for data-store2, verifyin file is integral aka can be read can be used
ls /mnt/data-store2/ 




