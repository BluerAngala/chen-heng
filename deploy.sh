#!/usr/bin/env bash
# deploy.sh — One command to ship everywhere:
#   1. Bundle source → dist/profile-card.html
#   2. Publish bundled HTML to openclacky.com  (PUT update to /~chen-heng)
#   3. Commit source changes & push to GitHub  (triggers GitHub Pages workflow
#      → bluerangala.github.io/chen-heng)
#
# Usage:
#   ./deploy.sh                  # normal deploy
#   ./deploy.sh --message "msg"  # custom commit message
#   ./deploy.sh --skip-publish   # only push to GitHub (skip openclacky)
#   ./deploy.sh --skip-github    # only publish to openclacky (skip git push)

set -euo pipefail

cd "$(dirname "$0")"

MESSAGE="deploy: $(date +%Y-%m-%d_%H%M)"
SKIP_PUBLISH=0
SKIP_GITHUB=0
SKIP_BUILD=0

for arg in "$@"; do
  case "$arg" in
    --message=*) MESSAGE="${arg#*=}" ;;
    --message) shift; MESSAGE="${1:-}" ;;
    --skip-publish) SKIP_PUBLISH=1 ;;
    --skip-github)  SKIP_GITHUB=1 ;;
    --skip-build)   SKIP_BUILD=1 ;;
    -h|--help)
      grep '^# ' "$0" | sed 's/^# //'
      exit 0 ;;
  esac
done

PUBLISH_RB="$HOME/.gem/ruby/2.6.0/gems/openclacky-1.3.4/lib/clacky/default_skills/personal-website/publish.rb"
BUNDLED="dist/profile-card.html"

# ── 1. bundle ────────────────────────────────────────────────────────────────
if [ "$SKIP_BUILD" -eq 0 ]; then
  echo "▸ building bundle…"
  python3 build.py
else
  echo "▸ skip build (using existing $BUNDLED)"
fi

# ── 2. openclacky.com ────────────────────────────────────────────────────────
if [ "$SKIP_PUBLISH" -eq 0 ]; then
  if [ ! -f "$BUNDLED" ]; then
    echo "❌ $BUNDLED missing — run without --skip-build first" >&2
    exit 1
  fi
  echo "▸ publishing to openclacky.com…"
  ruby "$PUBLISH_RB" publish \
    --name "Chen Heng" \
    --html-file "$BUNDLED"
else
  echo "▸ skip openclacky publish"
fi

# ── 3. github ────────────────────────────────────────────────────────────────
if [ "$SKIP_GITHUB" -eq 0 ]; then
  echo "▸ pushing to github…"
  git add -A
  if git diff --cached --quiet; then
    echo "  (no source changes to commit)"
  else
    git -c user.email=bluer@local -c user.name=bluer commit -m "$MESSAGE"
    git push
    echo "  → pushed. GitHub Actions will deploy to bluerangala.github.io/chen-heng"
  fi
else
  echo "▸ skip github push"
fi

echo ""
echo "✓ done"
echo "  openclacky: https://www.openclacky.com/~chen-heng"
echo "  github.io:  https://bluerangala.github.io/chen-heng"
