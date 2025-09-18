#!/bin/bash
# Extract version from GITHUB_REF (e.g., refs/tags/v1.2.3)
if [[ "$GITHUB_REF" =~ refs/tags/v([0-9]+\.[0-9]+\.[0-9]+) ]]; then
  VERSION="${BASH_REMATCH[1]}"
else
  VERSION="dev"
fi

echo "VERSION=$VERSION" > version.env
