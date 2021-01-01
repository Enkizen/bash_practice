#mount target for vpc will take 5 minutes to be deployed and available. 
#Click on Amazon EC2 mount instructions under EFS management

#create Inbound and Outbound Security Group instance to EFS and EFS to instance

#inbound for the ec2 instance
#SSH TCP port 22 source 0.0.0.0/0
#SSH TCP port 22 source ::/0

#Custom TCP rule TCP port 2049 source group id for EFS sg-87b4e3fe
#this allows NFS port 2049 inbound from efs to instance


#inbound for the efs
#Custom TCP rule TCP port 2049 source group id for instance sg-2c4b1c55
#this allows NFS port 2049 inbound from instance to efs

#install if not, on ssh to ec2 instance
sudo yum install -y nfs-utils\

#make directory
sudo mkdir efs

#mount file system efs using DNS name. basically copy own mount instructions
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-89c02590.efs.us-west-1.amazonaws.com:/ efs

#check
ls -ld /mnt/efs
/mnt/efs
