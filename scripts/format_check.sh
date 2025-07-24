#!/bin/bash
set -euo pipefail

echo "[format_check.sh] Running format_check.sh..."

echo ./gradlew spotlessCheck

echo "[format_check.sh] format_check.sh completed."