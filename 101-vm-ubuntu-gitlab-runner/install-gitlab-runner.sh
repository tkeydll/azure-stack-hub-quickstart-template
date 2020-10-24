#!/bin/sh
TOKEN=$1
echo "TOKEN = " $TOKEN

# Download and install gitlab-runner.
curl -LJO https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb
dpkg -i gitlab-runner_amd64.deb

# Register
sudo gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --registration-token "$TOKEN" \
  --executor "shell" \
  --description "ubuntu shell runner" \
  --tag-list "ubuntu, shell" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"
