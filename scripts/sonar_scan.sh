#!/bin/bash
set -euo pipefail

echo "[sonar_scan.sh] Running sonar..."

echo ./gradlew sonar

echo "[sonar_scan.sh] sonar completed."