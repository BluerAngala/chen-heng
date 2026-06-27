# chen-heng — personal homepage

> 陈恒 · 律师 · 独立开发者 / Attorney · Independent Developer

The source for my personal homepage: https://www.openclacky.com/~chen-heng

## Build

No build step — open `index.html` directly in a browser, or serve the folder
with any static host:

```bash
python3 -m http.server 8000
# → http://localhost:8000/
```

## Files

| File          | Purpose                                                                |
| ------------- | ---------------------------------------------------------------------- |
| `index.html`  | Page structure & content. All copy lives here, with `data-i18n` keys. |
| `style.css`   | All styles. CSS variables for theme (light/dark/system).               |
| `script.js`   | i18n dictionary, theme toggle, clock, terminal typewriter.             |

Editing copy: change the `data-i18n` value in `index.html` (default language,
zh-CN) AND the matching key in `script.js` (under `i18n['zh-CN']`). Repeat for
`zh-TW` and `en` to keep all three languages in sync.

## Design notes

- **Type:** Optima / Helvetica Neue for Latin, STKaiti for CJK. No web fonts —
  all system fonts for instant load and offline reliability.
- **Palette:** Cream paper (`#f4ead5`) and ink black (`#1a1410`), with vermilion
  accent (`#b8241a`) — the colors of Chinese legal seals and printed statutes.
- **Layout:** Three-column on desktop (sticky left nav · centered content ·
  sticky right meta), single column on mobile.
- **Theme:** Light / Dark / System, persisted to `localStorage`, follows OS
  preference changes via `matchMedia.addEventListener`.
- **i18n:** Inline JavaScript dictionary, no build step. Switching language
  rewrites `data-i18n` attributes in place without reload.

## Hosting

Currently published via the OpenClacky personal-website skill
(`personal-website/publish.rb`). The generated HTML is fully self-contained,
so it can be hosted on GitHub Pages, Netlify, Cloudflare Pages, or any static
host by uploading `profile-card.html` as `index.html`.

## License

MIT — fork it, swap in your own content, ship your own homepage.
