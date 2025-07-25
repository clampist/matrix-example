#!/bin/bash
set -euo pipefail

echo "[integration_test.sh] Running integration tests..."

echo ./gradlew integrationTest --info

echo "[integration_test.sh] Integration tests completed."