#!/bin/bash
echo "Starting your AWS server..."
aws ec2 start-instances --instance-ids i-062d501ab755f4e95

echo "Waiting 30 seconds for server to boot..."
sleep 30

echo "Getting server IP..."
IP=$(aws ec2 describe-instances \
    --instance-ids i-062d501ab755f4e95 \
    --query "Reservations[*].Instances[*].PublicIpAddress" \
    --output text)

echo "✅ Server is ready!"
echo "Your IP: $IP"
echo ""
echo "Run this to connect:"
echo "ssh -i ~/.ssh/timothy-key.pem ubuntu@$IP"
