#!/bin/bash
set -euo pipefail

# https://github.com/bazelbuild/bazel/issues/17124
url="$1"
echo -n "sha256-"
curl -fnsSL "$url" | sha256sum | cut -d' ' -f1 | xxd -r -p | base64
