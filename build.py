#!/usr/bin/env python3
"""
build.py — Bundle index.html + style.css + script.js into one self-contained
HTML file at dist/profile-card.html for OpenClacky publishing.

The GitHub Pages deployment uses the source files directly; this bundle is
only needed because openclacky.com's publish API accepts a single HTML.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
INDEX = ROOT / "index.html"
CSS = ROOT / "style.css"
JS = ROOT / "script.js"
OUT = ROOT / "dist" / "profile-card.html"


def bundle() -> Path:
    if not INDEX.exists() or not CSS.exists() or not JS.exists():
        raise SystemExit("missing source file(s) — need index.html, style.css, script.js")

    html = INDEX.read_text(encoding="utf-8")
    css = CSS.read_text(encoding="utf-8")
    js = JS.read_text(encoding="utf-8")

    # Inline stylesheet: <link rel="stylesheet" href="style.css">
    html, n = re.subn(
        r'<link[^>]+href=["\']style\.css["\'][^>]*>',
        f"<style>\n{css}\n</style>",
        html,
        count=1,
    )
    if n != 1:
        raise SystemExit("could not find <link href=\"style.css\"> to inline")

    # Inline script: <script src="script.js"></script>
    html, n = re.subn(
        r'<script[^>]+src=["\']script\.js["\'][^>]*>\s*</script>',
        f"<script>\n{js}\n</script>",
        html,
        count=1,
    )
    if n != 1:
        raise SystemExit("could not find <script src=\"script.js\"> to inline")

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(html, encoding="utf-8")
    return OUT


if __name__ == "__main__":
    out = bundle()
    size_kb = out.stat().st_size / 1024
    print(f"✓ bundled → {out.relative_to(ROOT)} ({size_kb:.1f} KB)")
