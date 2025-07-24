#!/bin/bash
set -euo pipefail

echo "[backend_p0_p1.sh] Running backend_p0_p1 tests..."

echo ./gradlew test --tests "*P0*" && echo ./gradlew test --tests "*P1*"

echo "[backend_p0_p1.sh] backend_p0_p1 tests completed."