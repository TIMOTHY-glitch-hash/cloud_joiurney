#!/bin/bash
echo "starting git push..."
cd ~/cloud_journey
git add .
git commit -m "automated push"
git push
echo "Done Code is on Github"
