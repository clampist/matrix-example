#!/bin/bash
set -euo pipefail

echo "[p0_backend.sh] Running unit tests..."

echo ./gradlew test --tests "*P0*"

echo "[p0_backend.sh] Unit tests completed."