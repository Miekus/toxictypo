#!/bin/bash
#example usage ./init.sh 
ec2user='ubuntu'
ec2_1_ip='ec2-52-58-212-247.eu-central-1.compute.amazonaws.com'
ec2_2_ip='ec2-3-120-134-125.eu-central-1.compute.amazonaws.com'
keyRoot='~/.ssh/devops_lab.pem'

# for 1 instance
scp -i $keyRoot ./toxic-start-up.sh $ec2user@$ec2_1_ip:toxic-start-up.sh
ssh -i $keyRoot $ec2user@$ec2_1_ip "bash ./toxic-start-up.sh"
# for 2 instance
scp -i $keyRoot ./toxic-start-up.sh $ec2user@$ec2_2_ip:toxic-start-up.sh
ssh -i $keyRoot $ec2user@$ec2_2_ip "bash ./toxic-start-up.sh"
