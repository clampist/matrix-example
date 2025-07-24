#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running onlineUiTest..."

echo ./gradlew onlineUiTest

echo "[ut.sh] onlineUiTest completed."