#!/bin/bash
set -euo pipefail

echo "[coverage.sh] Generating coverage report..."

echo ./gradlew jacocoTestReport

echo "[coverage.sh] Coverage report generated."