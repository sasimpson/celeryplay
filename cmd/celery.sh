#!/bin/sh

set -o errexit
set -o nounset
export PYTHONWARNINGS="ignore"

celery -A tasker.tasks worker --loglevel INFO