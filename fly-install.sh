#!/bin/bash
curl 'http://localhost:8080/api/v1/cli?arch=amd64&platform=linux' -o fly
chmod +x ./fly
sudo mv ./fly /usr/local/bin/