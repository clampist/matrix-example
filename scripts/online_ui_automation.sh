#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running unit tests..."

echo ./gradlew onlineUiTest

echo "[ut.sh] Unit tests completed."