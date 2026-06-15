#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

echo ">> Atualizando código..."
git pull origin main

echo ">> Subindo container..."
docker compose up -d

echo ">> Pronto. Site em http://127.0.0.1:8090"
docker compose ps
