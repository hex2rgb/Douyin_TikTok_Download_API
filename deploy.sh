#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

export COMPOSE_ENV_FILES=.env

docker compose -p dtk -f docker/compose.my.yml --profile browser --profile downloader down -v --remove-orphans
docker compose -p dtk -f docker/compose.my.yml --profile browser --profile downloader up -d --build