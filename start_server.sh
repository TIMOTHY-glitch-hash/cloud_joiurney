#!/bin/bash
echo "Starting your AWS server..."
aws ec2 start-instances --instance-ids i-062d501ab755f4e95
echo "Waiting 30 seconds for server to boot..."
sleep 30
echo "Your server details:"
aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].[InstanceId,State.Name,PublicIpAddress]" \
    --output table
echo "Now run: ssh -i ~/.ssh/timothy-key.pem ubuntu@YOUR_IP"
