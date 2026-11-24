#!/usr/bin/env bash
# Usage: export-pdf.sh <magazine.html> [output.pdf]
# Renders the magazine to a Letter-size PDF with headless Chrome or Chromium.
set -euo pipefail
in="$1"
out="${2:-${in%.html}.pdf}"
for c in "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
         "/Applications/Chromium.app/Contents/MacOS/Chromium" \
         "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
         google-chrome google-chrome-stable chromium chromium-browser msedge; do
  if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then chrome="$c"; break; fi
done
[ -n "${chrome:-}" ] || { echo "Chrome, Chromium, or Edge is required" >&2; exit 1; }
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
{ printf '<!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"></head><body>'; cat "$in"; printf '</body></html>'; } > "$tmp/page.html"
"$chrome" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=10000 \
  --print-to-pdf="$(cd "$(dirname "$out")" && pwd)/$(basename "$out")" "file://$tmp/page.html" 2>/dev/null
echo "Saved $out"
