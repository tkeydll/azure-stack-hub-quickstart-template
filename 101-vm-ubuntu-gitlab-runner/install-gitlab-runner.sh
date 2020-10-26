#!/bin/sh
GITLAB_SERVER=$1
GITLAB_TOKEN=$2

echo "GITLAB_SERVER = " $GITLAB_SERVER
echo "GITLAB_TOKEN = " $GITLAB_TOKEN

# Download and install gitlab-runner.
curl -LJO https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb
dpkg -i gitlab-runner_amd64.deb

# Register
sudo gitlab-runner register \
  --non-interactive \
  --url "$GITLAB_SERVER" \
  --registration-token "$GITLAB_TOKEN" \
  --executor "shell" \
  --description "ubuntu shell runner" \
  --tag-list "ubuntu, shell" \
  --run-untagged="true" \
  --locked="false" \
  --access-level="not_protected"
