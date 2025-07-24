#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running unit tests..."

./gradlew test --info

echo "[ut.sh] Unit tests completed."