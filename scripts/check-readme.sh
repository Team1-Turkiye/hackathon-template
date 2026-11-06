#!/usr/bin/env bash
# Checks that README.md is ready to submit: no TODO placeholders left outside
# HTML comments, and the key links in "At a glance" are filled in.
# Usage: ./scripts/check-readme.sh [path/to/README.md]
set -euo pipefail
file="${1:-README.md}"
[ -f "$file" ] || { echo "No $file found."; exit 1; }

# Drop HTML comments (they are instructions, not content), keep line numbers.
visible=$(perl -0pe 's/<!--.*?-->/my $c=$&; $c =~ tr{\n}{\n}cd; $c/gse' "$file")

fail=0
todos=$(printf '%s\n' "$visible" | grep -n 'TODO' || true)
if [ -n "$todos" ]; then
  echo "✗ Placeholders left in $file:"
  printf '%s\n' "$todos" | sed 's/^/    line /'
  fail=1
fi

for row in "Live demo" "Demo video" "Pitch deck"; do
  line=$(printf '%s\n' "$visible" | grep -m1 "^| \*\*$row\*\*" || true)
  if [ -z "$line" ]; then
    echo "✗ Row \"$row\" is missing from the At a glance table."; fail=1
  elif ! printf '%s' "$line" | grep -qE 'https?://'; then
    echo "✗ Row \"$row\" has no link."; fail=1
  fi
done

if grep -q 'Participant?\*\* Fork this repo' "$file"; then
  echo "✗ The participant notice at the top is still there. Delete it."; fail=1
fi

if [ "$fail" -eq 0 ]; then echo "✓ $file looks ready to submit."; fi
exit "$fail"
