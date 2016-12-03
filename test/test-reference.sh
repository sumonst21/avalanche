#!/bin/bash
set -e

DIR="$( cd "$( dirname $0 )" && pwd )"

source "$DIR/scripts/_build-test-parameter.sh"

for f in packages/*; do
  if [ -n "$PACKAGE" ] && [ `basename $f` != "$PACKAGE" ]; then
    continue
  fi

  if [ -d "$f/test" ]; then
    mkdir -p "$f/test/tmp"
    # Build HTML
    sh "$DIR/scripts/build-test-html.sh" --package $(basename $f)
    # Build CSS
    sh "$DIR/scripts/build-test-css.sh" --package $(basename $f)
    # Create test reference
    ( cd "$f" && ../../node_modules/backstopjs/cli/index.js reference --configPath=../../backstop.json )
    # Cleanup
    rm -Rf "$f/test/tmp"
  fi
done
