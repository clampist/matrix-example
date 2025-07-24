#!/bin/bash
set -euo pipefail

echo "[performance.sh] Running performance tests..."

echo ./gradlew performanceTest

echo "[performance.sh] performance tests completed."