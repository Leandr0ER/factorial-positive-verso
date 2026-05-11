#!/usr/bin/env bash

set -euo pipefail

lake build FactorialPositiveVerso
lake env lean --run FactorialPositiveVersoMain.lean --output _out/site

test -f _out/site/html-multi/index.html
test -f _out/site/html-multi/-verso-data/blueprint-preview-manifest.json
