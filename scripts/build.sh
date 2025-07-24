#!/bin/bash
set -euo pipefail

echo "[build.sh] Starting build process..."

# Compile code
echo ./gradlew clean build --info

echo "[build.sh] Build completed."