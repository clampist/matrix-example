#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running unit tests..."

echo ./gradlew test --info

echo "[ut.sh] Unit tests completed."