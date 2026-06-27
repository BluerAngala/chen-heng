#!/usr/bin/env python3
"""
build.py — Bundle index.html + style.css + script.js into one self-contained
HTML file. Used for BOTH OpenClacky (dist/profile-card.html) and GitHub Pages
(docs/index.html) so both hosts render identically and never see partial-load
issues from relative <link>/<script> paths.
"""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
INDEX = ROOT / "index.html"
CSS = ROOT / "style.css"
JS = ROOT / "script.js"

# OpenClacky single-HTML upload target (consumed by publish.rb).
OPENCLACKY_OUT = ROOT / "dist" / "profile-card.html"

# GitHub Pages source folder. Pages workflow uploads ./docs.
GITHUB_OUT = ROOT / "docs" / "index.html"


def bundle() -> tuple[Path, Path]:
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
    # NOTE: must use a callable replacement, not a plain string.
    # re.sub interprets backslash escapes (e.g. \n, \t) in string
    # replacements — so the literal JS source `'\\n'` (backslash + n)
    # would silently become a real newline, breaking string literals.
    html, n = re.subn(
        r'<script[^>]+src=["\']script\.js["\'][^>]*>\s*</script>',
        lambda _m: f"<script>\n{js}\n</script>",
        html,
        count=1,
    )
    if n != 1:
        raise SystemExit("could not find <script src=\"script.js\"> to inline")

    OPENCLACKY_OUT.parent.mkdir(parents=True, exist_ok=True)
    OPENCLACKY_OUT.write_text(html, encoding="utf-8")

    GITHUB_OUT.parent.mkdir(parents=True, exist_ok=True)
    GITHUB_OUT.write_text(html, encoding="utf-8")

    return OPENCLACKY_OUT, GITHUB_OUT


if __name__ == "__main__":
    openclacky_out, github_out = bundle()
    print(f"✓ openclacky → {openclacky_out.relative_to(ROOT)} "
          f"({openclacky_out.stat().st_size / 1024:.1f} KB)")
    print(f"✓ github.io  → {github_out.relative_to(ROOT)} "
          f"({github_out.stat().st_size / 1024:.1f} KB)")
