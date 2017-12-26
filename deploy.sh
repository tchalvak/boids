#!/bin/bash
echo "...syncing..."
aws s3 sync ./www/ s3://flocking-ai/ --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" --delete
echo "---------------------------------------------------------------------------------------"
echo ""
echo "Site should be uploaded at: http://flocking-ai.s3-website-us-east-1.amazonaws.com"
echo "Done."