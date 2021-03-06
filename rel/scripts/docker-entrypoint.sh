#!/bin/bash

set -e

export AWS_ENV_PATH="/nerves_hub_billing/$ENVIRONMENT/"

# Set env vars from AWS SSM
# This uses get-parameters-from-path and automatically sets any that match the prefix above (AWS_ENV_PATH)
# http://docs.aws.amazon.com/cli/latest/reference/ssm/get-parameters-by-path.html
eval $(aws-env)

SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

$SCRIPT_PATH/s3-sync.sh

exec $@
