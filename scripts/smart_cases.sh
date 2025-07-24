#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running smart tests..."

echo ./gradlew test --tests "*Smart*"

echo "[ut.sh] smart tests completed."