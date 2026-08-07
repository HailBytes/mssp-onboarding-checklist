#!/usr/bin/env bash
# Runs the same checks as the "Markdown Quality" CI workflow so contributors
# can catch failures before opening a PR instead of after. Optional tools
# (typos, markdown-link-check) are skipped with a warning if not installed
# locally — CI still runs them regardless.
set -uo pipefail

status=0

echo "== Markdown lint =="
npx --yes markdownlint-cli2@0.23.1 || status=1

echo
echo "== Editorial leftover check =="
# Mirrors .github/workflows/markdown-quality.yml's editorial-leftovers job.
# CHANGELOG.md is excluded since it legitimately documents this check by name.
if grep -rnE '^(<{7}|={7}|>{7})( |$)|\b(TODO|FIXME|XXX)\b' \
     --include='*.md' --exclude='CHANGELOG.md' .; then
  echo "Editorial leftovers found (conflict markers or TODO/FIXME). Resolve before submitting." >&2
  status=1
else
  echo "No editorial leftovers found."
fi

echo
echo "== Spell check =="
if command -v typos >/dev/null 2>&1; then
  typos --config .typos.toml || status=1
else
  echo "typos CLI not installed locally — skipping (install: https://github.com/crate-ci/typos#install)."
  echo "CI will still run this check."
fi

echo
echo "== Internal link check =="
if command -v markdown-link-check >/dev/null 2>&1; then
  find . -name '*.md' -not -path './.git/*' -print0 \
    | xargs -0 -n1 markdown-link-check --config .github/markdown-link-check-internal.json --verbose \
    || status=1
else
  echo "markdown-link-check not installed locally — skipping (install: npm install -g markdown-link-check@3)."
  echo "CI will still run this check."
fi

echo
if [ "$status" -eq 0 ]; then
  echo "All local checks passed."
else
  echo "One or more checks failed — see above." >&2
fi
exit "$status"
