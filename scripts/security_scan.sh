#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running dependencyCheckAnalyze..."

echo ./gradlew dependencyCheckAnalyze

echo "[ut.sh] dependencyCheckAnalyze completed."