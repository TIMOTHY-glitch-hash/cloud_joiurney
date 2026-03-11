#!/bin/bash
echo "starting git_push..."
cd ~/cloud_journey
git add .
git commit -m "auto push"
git push
echo "done push"
