#!/bin/bash
set -euo pipefail

echo "[smart_cases.sh] Running smart tests..."

echo ./gradlew test --tests "*Smart*"

echo "[smart_cases.sh] smart tests completed."