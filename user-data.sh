#!/bin/bash
chmod 666 /var/run/docker.sock
sed -i 's/localhost/'"$(curl -l http://169.254.169.254/latest/meta-data/public-ipv4)"'/' /home/ec2-user/docker-compose.yml
docker-compose -f /home/ec2-user/docker-compose.yml up -d