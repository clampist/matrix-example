#!/bin/bash
set -euo pipefail

echo "[security_scan.sh] Running dependencyCheckAnalyze..."

echo ./gradlew dependencyCheckAnalyze

echo "[security_scan.sh] dependencyCheckAnalyze completed."