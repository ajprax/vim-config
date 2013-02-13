#!/bin/bash

# Display current branches:
echo "Current branch for each bundle:"
for bundle_path in bundle/*; do
  echo "  $bundle_path:"
  cd "$bundle_path"
  git branch --color | sed 's/^/    /'
  cd -
done
echo

# Pull in new changes in all currently tracked branches of all bundles.
echo "Updating bundles:"
for bundle_path in bundle/*; do
  echo "  Updating $bundle_path:"
  cd "$bundle_path"
  git pull --ff-only | sed 's/^/    /'
  cd -
done
