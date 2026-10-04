#!/usr/bin/env bash
# Regenerates assets/img/og.png (1200x630) from the dark plane-through-clouds graphic.
# Needs Google Chrome (headless). Run from the repo root.
set -euo pipefail
cd "$(dirname "$0")/.."
tmp="$(mktemp -d)"
cp assets/img/dark/plane-through-clouds-static.svg "$tmp/art.svg"
cat > "$tmp/og.html" <<'H'
<!doctype html><meta charset="utf-8"><style>
html,body{margin:0;width:1200px;height:630px;background:#001B2B;overflow:hidden;font-family:-apple-system,"SF Pro Display","Helvetica Neue",Arial,sans-serif}
.w{display:flex;align-items:center;height:630px;padding:0 80px;gap:56px}
.t{flex:1;color:#F1F9F9}
.k{font-size:24px;font-weight:700;letter-spacing:.16em;text-transform:uppercase;color:#4DFFB6;margin:0 0 22px}
h1{font-size:96px;line-height:1;letter-spacing:-.035em;margin:0 0 26px}
p{font-size:34px;line-height:1.35;color:#B0CDE0;margin:0}
img{width:430px;height:430px;border-radius:56px;border:2px solid #16465c}
</style><div class="w"><div class="t"><p class="k">7 &amp; Co</p><h1>Puddle<br>Jumper</h1><p>SSH for Mac, iPad and iPhone</p></div><img src="art.svg"></div>
H
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --disable-gpu --hide-scrollbars \
  --window-size=1200,630 --screenshot="$PWD/assets/img/og.png" "file://$tmp/og.html" >/dev/null 2>&1
rm -rf "$tmp"
sips -g pixelWidth -g pixelHeight assets/img/og.png | tail -2
