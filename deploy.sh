#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

COMPOSE=(docker compose -f docker/compose.my.yml --profile browser --profile downloader)

"${COMPOSE[@]}" down --remove-orphans
"${COMPOSE[@]}" up -d --build
