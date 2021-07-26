#!/bin/bash
# validators.sh

set -Eeuo pipefail
set -x

source env/bin/activate

echo 'running html5validator'
html5validator --root docs/

echo 'running linkchecker'
linkchecker --check-extern docs/