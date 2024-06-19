#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${0}" )" && pwd )"

export CONCOURSE="${CONCOURSE:-bosh-ecosystem}"
cd "${SCRIPT_DIR}"
rake pipeline