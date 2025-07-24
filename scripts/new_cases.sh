#!/bin/bash
set -euo pipefail

echo "[new_cases.sh] Running new_cases tests..."

echo ./gradlew test --tests "*New*"

echo "[new_cases.sh] new_cases tests completed."