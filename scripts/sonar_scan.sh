#!/bin/bash
set -euo pipefail

echo "[ut.sh] Running sonar..."

echo ./gradlew sonar

echo "[ut.sh] sonar completed."