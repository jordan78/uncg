#! /bin/bash
echo "----------------------------------"
echo "---> $(date)"
echo "---> Yum updating: $(hostname -f)"
echo "----------------------------------"

timeout 600 yum update -y

#needs-restarting -r; echo $?

## reboot only if left side returns 1. 
needs-restarting -r || shutdown -r
