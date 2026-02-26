#!/usr/bin/env bash
set -e

PLUGIN_JSON=".claude-plugin/plugin.json"
VERSION=$(grep '"version"' "$PLUGIN_JSON" | sed 's/.*"version"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/')
OUTPUT="hennitutor-${VERSION}.zip"

echo "Building $OUTPUT..."

rm -f "$OUTPUT"
zip -r "$OUTPUT" \
  .claude-plugin \
  commands \
  skills \
  README.md \
  --exclude "*.DS_Store"

echo "Done: $OUTPUT"
