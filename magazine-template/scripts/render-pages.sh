#!/usr/bin/env bash
# Usage: render-pages.sh <magazine.html> <page-count> [out-dir]
# Screenshots every page, then saves contact sheets of 4 pages each (out-dir/pages-N.png)
# so you can check for overflow, empty space, and label collisions. Needs Chrome; contact sheets use macOS sips.
set -euo pipefail
in="$1"; n="$2"; out="${3:-./render}"
mkdir -p "$out"; out="$(cd "$out" && pwd)"
for c in "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" "/Applications/Chromium.app/Contents/MacOS/Chromium" google-chrome chromium; do
  if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then chrome="$c"; break; fi
done
[ -n "${chrome:-}" ] || { echo "Chrome or Chromium is required" >&2; exit 1; }
{ printf '<!doctype html><meta charset="utf-8"><meta name="viewport" content="width=device-width">'; cat "$in"; } > "$out/preview.html"
"$chrome" --headless=new --disable-gpu --hide-scrollbars --virtual-time-budget=10000 \
  --window-size=900,$(( n*1088 + 120 )) --screenshot="$out/all.png" "file://$out/preview.html" 2>/dev/null
if command -v sips >/dev/null 2>&1; then
  for i in $(seq 0 $(( (n-1)/4 ))); do
    sips -c 4352 900 --cropOffset $((40+i*4352)) 0 "$out/all.png" --out "$out/pages-$i.png" >/dev/null
    sips -Z 2400 "$out/pages-$i.png" >/dev/null
  done
fi
echo "Saved screenshots in $out"
