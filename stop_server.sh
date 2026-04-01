#!/bin/bash
echo "Stopping your AWS server..."
aws ec2 stop-instances --instance-ids i-062d501ab755f4e95
echo "Server stopped! Free tier hours saved 💪"
