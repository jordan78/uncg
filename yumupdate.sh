#! /bin/bash
echo "----------------------------------"
echo "---> $(date)"
echo "---> Yum updating: $(hostname -f)"
echo "----------------------------------"

yum update -y

needs-restarting -r; echo $?
#needs-restarting -r || shutdown -r
