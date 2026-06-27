#!/bin/bash
cat > /tmp/profile-card.html << 'CARD_EOF'
<!DOCTYPE html>
<html lang="zh-CN" data-theme="light">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>陈恒 · 律师的双手</title>
<style>
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
:root{
--paper:#f1e8d4;--paper-2:#e9ddc1;--paper-edge:rgba(160,110,60,0.10);--paper-edge-2:rgba(140,90,50,0.08);
--ink:#1a1410;--ink-soft:#4a3d2e;--ink-faint:#8a7a60;
--vermillion:#b8241a;--vermillion-d:#7a1610;
--rule:rgba(26,20,16,0.18);
--card-bg:rgba(255,255,255,0.25);--toggle-bg:rgba(26,20,16,0.08);--toggle-bg-hover:rgba(26,20,16,0.16);
--term-bg:rgba(20,14,8,0.92);--term-fg:#ede1c6;--term-prompt:#b8241a;--term-cursor:#b8241a;
}
:root[data-theme="dark"]{
--paper:#100c08;--paper-2:#1a140d;--paper-edge:rgba(212,175,55,0.05);--paper-edge-2:rgba(80,120,200,0.04);
--ink:#ede1c6;--ink-soft:#c9b88f;--ink-faint:#8a7a5a;
--vermillion:#e84535;--vermillion-d:#b8241a;
--rule:rgba(237,225,198,0.16);
--card-bg:rgba(237,225,198,0.04);--toggle-bg:rgba(237,225,198,0.12);--toggle-bg-hover:rgba(237,225,198,0.22);
--term-bg:rgba(0,0,0,0.4);--term-fg:#ede1c6;--term-prompt:#e84535;--term-cursor:#e84535;
}
html{scroll-behavior:smooth;scroll-padding-top:60px}
html,body{min-height:100%;font-family:'STKaiti','KaiTi','BiauKai','Kaiti SC','STKaiti SC','Optima','Helvetica Neue','Helvetica','Arial',sans-serif;color:var(--ink);background:var(--paper);-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale;overflow-x:clip;overflow-y:visible;transition:background-color .5s ease,color .5s ease}
body::before{content:"";position:fixed;inset:0;z-index:0;pointer-events:none;background-image:url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='240' height='240'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/><feColorMatrix values='0 0 0 0 0.10 0 0 0 0 0.08 0 0 0 0 0.05 0 0 0 0.10 0'/></filter><rect width='100%25' height='100%25' filter='url(%23n)'/></svg>");opacity:.55;mix-blend-mode:multiply}
:root[data-theme="dark"] body::before{opacity:.18;mix-blend-mode:screen}
body::after{content:"";position:fixed;inset:0;z-index:0;pointer-events:none;background:radial-gradient(ellipse 600px 400px at 0% 0%,var(--paper-edge),transparent 60%),radial-gradient(ellipse 500px 400px at 100% 100%,var(--paper-edge-2),transparent 60%)}
.shell{position:relative;z-index:1;display:grid;grid-template-columns:220px 1fr 200px;gap:36px;max-width:1400px;margin:0 auto;padding:36px 36px 48px;align-items:stretch}
.left,.right{display:flex;flex-direction:column}
.sidebar{position:sticky;top:36px;max-height:calc(100vh - 72px);overflow:hidden;align-self:start}
.left{grid-column:1}.right{grid-column:3}.main{grid-column:2;min-width:0;max-width:880px;justify-self:center;width:100%}
.brand{display:flex;align-items:center;gap:12px;padding-bottom:16px;border-bottom:1px solid var(--rule);margin-bottom:20px}
.brand .seal-mini{width:48px;height:48px;transition:transform .4s cubic-bezier(.16,1,.3,1);color:var(--vermillion);filter:drop-shadow(0 2px 4px color-mix(in srgb,var(--vermillion) 30%,transparent));flex-shrink:0}
.brand:hover .seal-mini{transform:rotate(-8deg) scale(1.05)}
.brand .name{font-family:'STKaiti','KaiTi','Songti SC',serif;font-size:20px;color:var(--ink);letter-spacing:.1em;line-height:1.2}
.brand .role{font-family:'Optima',sans-serif;font-size:11px;color:var(--ink-faint);letter-spacing:2px;text-transform:uppercase;margin-top:2px}
.sec-nav{margin-bottom:24px;padding-bottom:20px;border-bottom:1px solid var(--rule)}
.sec-nav-title{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:3px;color:var(--ink-faint);text-transform:uppercase;margin-bottom:12px}
.sec-nav-list{list-style:none;display:flex;flex-direction:column}
.sec-nav-item{position:relative}
.sec-nav-item a{display:flex;align-items:baseline;gap:10px;padding:7px 0 7px 10px;text-decoration:none;color:var(--ink-faint);font-family:'STKaiti','KaiTi','Kaiti SC','Optima','Helvetica Neue',sans-serif;font-size:15px;transition:all .25s ease;border-left:2px solid transparent;margin-left:-12px}
[lang="en"] .sec-nav-item a{font-family:'Optima',sans-serif;letter-spacing:1px;font-size:13px}
.sec-nav-item a:hover{color:var(--ink)}
.sec-nav-item.active a{color:var(--vermillion);border-left-color:var(--vermillion)}
.sec-nav-item a .num{font-family:'STKaiti','KaiTi',sans-serif;font-size:15px;color:var(--vermillion);font-weight:700;width:18px}
[lang="en"] .sec-nav-item a .num{font-family:'Optima','Avenir Next',sans-serif;font-style:italic}
.sec-nav-item a .label{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:1.5px;text-transform:uppercase;margin-left:auto}
.terminal{background:var(--term-bg);border-radius:8px;border:1px solid var(--rule);overflow:hidden;font-family:'Menlo','Monaco','Courier New',monospace;font-size:12px;line-height:1.55;color:var(--term-fg);box-shadow:0 8px 24px rgba(0,0,0,.15)}
.term-head{display:flex;align-items:center;gap:6px;padding:7px 10px;background:rgba(0,0,0,.25);border-bottom:1px solid rgba(255,255,255,.08)}
.term-head .dot{width:8px;height:8px;border-radius:50%}
.term-head .d1{background:#ff5f57}.term-head .d2{background:#febc2e}.term-head .d3{background:#28c840}
.term-head .title{margin-left:8px;font-size:11px;color:rgba(237,225,198,.5);letter-spacing:1px}
.term-body{padding:10px 12px;height:260px;max-height:260px;position:relative;overflow-y:auto;overflow-x:hidden;scrollbar-width:thin;scrollbar-color:var(--term-fg) transparent}
.term-line{display:block;white-space:pre-wrap;word-break:break-all}
.term-cmd{color:var(--term-prompt);font-weight:600}
.term-out{color:var(--term-fg);opacity:.85;padding-left:12px}
.term-muted{opacity:.5}
.term-cursor{display:inline-block;width:7px;height:12px;background:var(--term-cursor);vertical-align:-2px;margin-left:2px;animation:blink 1s steps(2) infinite}
@keyframes blink{50%{opacity:0}}
.r-block{padding-bottom:18px;margin-bottom:18px;border-bottom:1px solid var(--rule)}
.r-block:last-child{border:none;margin-bottom:0}
.r-label{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:3px;color:var(--ink-faint);text-transform:uppercase;margin-bottom:10px}
.clock{font-family:'Menlo','Monaco',monospace;font-size:12px;color:var(--ink);line-height:1.5}
.clock .time-big{font-size:26px;font-weight:700;color:var(--vermillion);letter-spacing:1px;display:block;line-height:1.1}
.clock .date{color:var(--ink-faint);margin-top:4px;display:block}
.lang-group,.theme-group{display:flex;gap:4px}
.toggle{background:var(--toggle-bg);border:1px solid var(--rule);color:var(--ink);font-family:inherit;font-size:12px;font-weight:600;height:26px;border-radius:4px;cursor:pointer;transition:all .25s ease;display:inline-flex;align-items:center;justify-content:center;text-transform:none}
.toggle:hover{background:var(--vermillion);color:var(--paper);border-color:var(--vermillion);transform:translateY(-1px)}
.toggle.active{background:var(--vermillion);color:var(--paper);border-color:var(--vermillion)}
.lang-group .toggle{padding:0 8px;font-family:'STKaiti','KaiTi','Kaiti SC',sans-serif}
.lang-group .toggle[data-lang="en"]{font-family:'Optima','Helvetica Neue',sans-serif}
.theme-group .toggle{padding:0 6px;gap:4px;font-size:11px;height:24px;letter-spacing:.5px}
.theme-group .toggle .ti{font-size:12px;line-height:1}
.theme-group .toggle .tl{font-family:'STKaiti','KaiTi','Kaiti SC',sans-serif}
[lang="en"] .theme-group .toggle .tl{font-family:'Optima','Helvetica Neue',sans-serif}
.status{display:flex;align-items:center;gap:8px;font-family:'Optima',sans-serif;font-size:12px;color:var(--ink);letter-spacing:.5px}
.pulse{width:8px;height:8px;border-radius:50%;background:#28c840;box-shadow:0 0 0 0 rgba(40,200,64,.6);animation:pulse 2s ease-out infinite;flex-shrink:0}
@keyframes pulse{0%{box-shadow:0 0 0 0 rgba(40,200,64,.6)}70%{box-shadow:0 0 0 8px rgba(40,200,64,0)}100%{box-shadow:0 0 0 0 rgba(40,200,64,0)}}
.status-meta{font-size:11px;color:var(--ink-faint);margin-top:6px;letter-spacing:1px;text-transform:uppercase}
.masthead{display:flex;align-items:center;justify-content:space-between;padding-bottom:12px;border-bottom:3px double var(--ink);margin-bottom:36px;font-family:'Optima',sans-serif;font-size:11px;letter-spacing:4px;text-transform:uppercase;color:var(--ink-soft);gap:16px;flex-wrap:wrap}
.masthead .left{white-space:nowrap}
.masthead .right{font-style:italic;letter-spacing:2px}
.masthead .right em{color:var(--vermillion);font-style:normal;font-weight:700}
.hero{position:relative;text-align:center;padding:32px 0 40px;border-bottom:1px solid var(--rule)}
.hero-slogan-wrap{position:relative;display:inline-block;max-width:780px;animation:ink-in 1.4s cubic-bezier(.16,1,.3,1) both;margin-bottom:8px}
.hero-slogan{font-family:'STKaiti','KaiTi','BiauKai','Kaiti SC','Optima','Helvetica Neue','Helvetica',sans-serif;font-size:clamp(34px,5.4vw,56px);font-weight:500;line-height:1.5;color:var(--ink);letter-spacing:.05em;margin:0;animation:rise 1s .2s cubic-bezier(.16,1,.3,1) both}
[lang="en"] .hero-slogan{font-family:'Optima','Helvetica Neue','Helvetica','Avenir Next',sans-serif;letter-spacing:.02em;font-style:italic;font-weight:400}
.hero-slogan em{color:var(--vermillion);font-style:normal;font-weight:700;border-bottom:2px solid var(--vermillion);padding-bottom:2px}
@keyframes ink-in{from{opacity:0;transform:translateY(24px);filter:blur(8px)}to{opacity:1;transform:translateY(0);filter:blur(0)}}
.hero-attribution{margin-top:18px;font-family:'Optima','STKaiti','Helvetica Neue',sans-serif;font-size:15px;letter-spacing:6px;color:var(--vermillion);text-transform:uppercase;animation:rise 1s .5s cubic-bezier(.16,1,.3,1) both;font-weight:600}
.hero-seal{position:absolute;bottom:-22px;right:-72px;width:128px;height:128px;color:var(--vermillion);filter:drop-shadow(0 6px 14px color-mix(in srgb,var(--vermillion) 35%,transparent));animation:stamp .8s 1.2s cubic-bezier(.5,1.6,.6,1) both}
@keyframes rise{from{opacity:0;transform:translateY(12px)}to{opacity:1;transform:translateY(0)}}
@keyframes stamp{0%{opacity:0;transform:scale(2.8) rotate(-12deg)}55%{opacity:1;transform:scale(.88) rotate(-4deg)}80%{transform:scale(1.04) rotate(-6deg)}100%{opacity:1;transform:scale(1) rotate(-6deg)}}
.lede{max-width:680px;margin:36px auto 0;font-family:'STKaiti','KaiTi','Kaiti SC','Optima','Helvetica Neue',sans-serif;font-size:19px;line-height:2;color:var(--ink);text-align:justify;text-indent:2em;animation:rise 1s .7s cubic-bezier(.16,1,.3,1) both}
[lang="en"] .lede{text-indent:0}
.lede .dropcap{float:left;font-family:'STKaiti','KaiTi','BiauKai',sans-serif;font-size:84px;line-height:.85;padding:8px 12px 0 0;color:var(--vermillion);font-weight:700;margin-top:6px}
.section{margin:56px 0;scroll-margin-top:60px}
.section-head{display:flex;align-items:baseline;gap:14px;padding-bottom:10px;margin-bottom:0;border-bottom:1px solid var(--ink)}
.section-num{font-family:'STKaiti','Kaiti SC','STSong',serif;font-size:36px;color:var(--vermillion);line-height:1;font-weight:700}
[lang="en"] .section-num{font-family:'Didot','Bodoni 72',serif;font-style:italic}
.section-title{font-family:'Optima',sans-serif;font-size:12px;letter-spacing:4px;text-transform:uppercase;color:var(--ink-soft)}
.section-cn{font-family:'STKaiti','Songti SC',serif;font-size:15px;color:var(--ink)}
.section-rule{flex:1;border-top:1px dotted var(--ink-faint);transform:translateY(-5px)}
.practice-grid{display:grid;grid-template-columns:repeat(3,1fr);border-top:1px solid var(--rule)}
.practice-item{padding:18px 20px;border-bottom:1px solid var(--rule);border-right:1px solid var(--rule);transition:background .3s ease,padding-left .3s ease;position:relative;cursor:default}
.practice-item:nth-child(3n){border-right:none}
.practice-item::before{content:"";position:absolute;left:0;top:50%;transform:translateY(-50%);width:0;height:1px;background:var(--vermillion);transition:width .3s ease}
.practice-item:hover{background:color-mix(in srgb,var(--vermillion) 5%,transparent);padding-left:26px}
.practice-item:hover::before{width:10px}
.practice-item .idx{font-family:'Optima',sans-serif;font-size:11px;color:var(--vermillion);letter-spacing:2px;font-weight:700;display:block;margin-bottom:5px}
.practice-item .cn{font-family:'STKaiti','Songti SC',serif;font-size:19px;color:var(--ink);letter-spacing:.05em;display:block;margin-bottom:3px}
.practice-item .en{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:2px;color:var(--ink-faint);text-transform:uppercase;display:block;margin-bottom:6px}
.practice-item .desc{font-family:'STKaiti','KaiTi','Kaiti SC','Optima','Helvetica Neue',sans-serif;font-size:13px;color:var(--ink-soft);line-height:1.5}
.current-list{border-top:1px solid var(--rule)}
.current-item{display:grid;grid-template-columns:130px 1fr;gap:20px;padding:16px 4px;border-bottom:1px solid var(--rule);align-items:baseline;transition:padding-left .3s ease,background .3s ease;position:relative}
.current-item::before{content:"";position:absolute;left:0;top:50%;transform:translateY(-50%);width:0;height:1px;background:var(--vermillion);transition:width .3s ease}
.current-item:hover{padding-left:14px;background:color-mix(in srgb,var(--vermillion) 4%,transparent)}
.current-item:hover::before{width:10px}
.current-item .label{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:3px;text-transform:uppercase;color:var(--vermillion);font-weight:700;display:flex;align-items:center;gap:6px}
.current-item .label .icon{font-size:15px;line-height:1}
.current-item .content{font-family:'STKaiti','KaiTi','Kaiti SC','Optima','Helvetica Neue',sans-serif;font-size:15px;color:var(--ink);line-height:1.6}
.current-item .content em{font-style:normal;color:var(--ink-soft)}
.timeline{border-top:1px solid var(--rule);position:relative;padding-left:90px}
.timeline::before{content:"";position:absolute;left:64px;top:0;bottom:0;width:1px;background:var(--vermillion)}
.tl-item{position:relative;padding:20px 0 20px 32px;border-bottom:1px solid var(--rule)}
.tl-item:last-child{border-bottom:none}
.tl-item .year{position:absolute;left:-90px;top:20px;width:50px;font-family:'Didot','Bodoni 72',serif;font-size:22px;color:var(--vermillion);font-weight:700;text-align:right}
.tl-item .dot{position:absolute;left:-32px;top:28px;width:9px;height:9px;background:var(--paper);border:2px solid var(--vermillion);border-radius:50%;transition:all .3s ease}
.tl-item.current .dot{background:var(--vermillion);box-shadow:0 0 0 4px color-mix(in srgb,var(--vermillion) 20%,transparent)}
.tl-item .title{font-family:'STKaiti','Songti SC',serif;font-size:18px;color:var(--ink);margin-bottom:3px;font-weight:500;letter-spacing:.05em}
.tl-item .desc{font-family:'Optima','Songti SC',sans-serif;font-size:12px;color:var(--ink-faint);letter-spacing:1.5px;text-transform:uppercase}
.notes-head{display:flex;align-items:baseline;justify-content:space-between;padding:10px 4px;border-bottom:1px solid var(--rule);font-family:'Optima',sans-serif;font-size:11px;letter-spacing:3px;color:var(--ink-faint);text-transform:uppercase}
.notes-head a{color:var(--vermillion);text-decoration:none;font-weight:700;transition:gap .2s ease;display:inline-flex;gap:4px;align-items:center}
.notes-head a:hover{gap:8px}
.note-item{display:grid;grid-template-columns:100px 1fr 50px;gap:20px;padding:18px 4px;border-bottom:1px solid var(--rule);text-decoration:none;color:var(--ink);align-items:baseline;transition:padding-left .3s ease,background .3s ease;position:relative}
.note-item::before{content:"";position:absolute;left:0;top:50%;transform:translateY(-50%);width:0;height:1px;background:var(--vermillion);transition:width .3s ease}
.note-item:hover{padding-left:14px;background:color-mix(in srgb,var(--vermillion) 4%,transparent)}
.note-item:hover::before{width:10px}
.note-item .date{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:2px;color:var(--ink-faint);text-transform:uppercase}
.note-item .title{font-family:'Hoefler Text','Songti SC',serif;font-size:16px;color:var(--ink);line-height:1.5}
[lang="en"] .note-item .title{font-style:italic}
.note-item .read{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:1px;color:var(--ink-faint);text-transform:uppercase;text-align:right}
.links{display:grid;grid-template-columns:1fr;border-top:1px solid var(--rule)}
.link{display:grid;grid-template-columns:70px 1fr 28px;align-items:center;gap:18px;padding:20px 4px;border-bottom:1px solid var(--rule);text-decoration:none;color:var(--ink);transition:all .35s cubic-bezier(.16,1,.3,1);position:relative}
.link::before{content:"";position:absolute;left:0;top:50%;width:0;height:2px;background:var(--vermillion);transition:width .35s ease}
.link:hover{padding-left:18px;background:linear-gradient(90deg,color-mix(in srgb,var(--vermillion) 8%,transparent),transparent)}
.link:hover::before{width:12px}
.link .num{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:2px;color:var(--ink-faint)}
.link .label{font-family:'Hoefler Text','Songti SC',serif;font-size:16px;display:flex;align-items:center;gap:12px}
.link .label .icon{width:24px;height:24px;display:inline-flex;align-items:center;justify-content:center;border:1px solid var(--rule);border-radius:4px;font-size:12px;color:var(--vermillion);font-family:'Optima',sans-serif;font-weight:700;background:var(--card-bg)}
.link .label .sub{font-size:11px;color:var(--ink-faint);letter-spacing:2px;text-transform:uppercase;font-family:'Optima',sans-serif;margin-left:6px}
.link .arrow{font-family:'Optima',sans-serif;color:var(--ink-faint);font-size:18px;text-align:right;transition:all .35s ease}
.link:hover .arrow{color:var(--vermillion);transform:translateX(6px)}
.signature{margin:64px auto 0;max-width:420px;text-align:center;padding-top:28px;border-top:1px solid var(--rule)}
.signature svg{display:block;margin:0 auto 4px;color:var(--ink)}
.signature .sig-label{font-family:'Optima',sans-serif;font-size:11px;letter-spacing:5px;color:var(--ink-faint);text-transform:uppercase;margin-top:4px}
.colophon{margin-top:24px;padding-top:18px;border-top:1px solid var(--ink);display:flex;align-items:baseline;justify-content:space-between;font-family:'Optima','Hoefler Text',sans-serif;font-size:11px;letter-spacing:2px;color:var(--ink-faint);text-transform:uppercase;flex-wrap:wrap;gap:6px}
.colophon em{color:var(--vermillion);font-style:normal;font-weight:700}
.reveal{opacity:0;transform:translateY(20px);transition:opacity .8s ease,transform .8s cubic-bezier(.16,1,.3,1)}
.reveal.in{opacity:1;transform:translateY(0)}
@media (max-width:1100px){.shell{grid-template-columns:200px 1fr;padding:32px 28px;gap:28px}.right{grid-column:1/-1;position:static;max-height:none}.right .sidebar-inner{display:grid;grid-template-columns:1fr 1fr 1fr;gap:20px;border-top:1px solid var(--rule);padding-top:18px;margin-top:28px}.right .r-block{border:none;padding:0;margin:0}}
@media (max-width:760px){
  .shell{grid-template-columns:1fr;padding:28px 18px 36px;gap:0}
  .left,.right{grid-column:1;position:static;max-height:none}
  .left{padding-bottom:18px;margin-bottom:18px;border-bottom:1px solid var(--rule)}
  .right{margin-top:24px;padding-top:24px;border-top:1px solid var(--rule)}
  .right .sidebar-inner{grid-template-columns:1fr 1fr;gap:18px}
  .right .r-block{border:none;padding:0;margin:0}
  .sidebar .terminal{display:none}
  .sec-nav-list{flex-direction:row;flex-wrap:wrap;gap:6px 14px}
  .sec-nav-item a{padding:5px 0 5px 8px;font-size:14px}
  .sec-nav-item a .num{font-size:16px}
  .sec-nav-item a .label{font-size:11px}
  .hero{padding:24px 0 32px}
  .hero-slogan-wrap{padding:0 28px;max-width:100%}
  .hero-slogan{font-size:clamp(26px,7.5vw,40px);line-height:1.45;letter-spacing:.04em}
  .hero-slogan br{display:none}
  .hero-seal{width:84px;height:84px;bottom:-12px;right:-32px}
  .hero-attribution{font-size:12px;letter-spacing:4px;margin-top:14px}
  .lede{font-size:16px;line-height:1.85;text-indent:1.5em;padding:0 4px}
  .lede .dropcap{font-size:60px;padding:6px 10px 0 0}
  .practice-grid{grid-template-columns:repeat(2,1fr)}
  .practice-item:nth-child(3n){border-right:1px solid var(--rule)}
  .practice-item:nth-child(2n){border-right:none}
  .practice-item .cn{font-size:17px}
  .practice-item .desc{font-size:13px;line-height:1.55}
  .current-item{grid-template-columns:88px 1fr;gap:12px}
  .current-item .label{font-size:11px}
  .current-item .content{font-size:15px}
  .timeline{padding-left:72px}
  .timeline::before{left:50px}
  .tl-item{position:relative;padding:18px 0 18px 28px;border-bottom:1px solid var(--rule)}
  .tl-item .year{left:-72px;width:40px;font-size:18px}
  .tl-item .dot{left:-26px}
  .tl-item .title{font-size:16px}
  .tl-item .desc{font-size:11px}
  .note-item{grid-template-columns:74px 1fr 42px;gap:12px;padding:14px 4px}
  .note-item .title{font-size:14px}
  .link{grid-template-columns:48px 1fr 22px;gap:12px;padding:16px 4px}
  .link .label{font-size:15px;gap:8px}
  .link .label .sub{display:none}
  .masthead{font-size:10px;letter-spacing:3px;gap:10px}
  .signature{margin-top:48px}
  .colophon{font-size:10px;gap:10px}
}
@media (max-width:480px){
  .practice-grid{grid-template-columns:1fr}
  .practice-item{border-right:none !important}
  .right .sidebar-inner{grid-template-columns:1fr}
  .hero-slogan{font-size:24px;line-height:1.4}
  .hero-seal{width:68px;height:68px;bottom:-8px;right:-22px}
  .lede{font-size:15px}
  .lede .dropcap{font-size:52px}
}
</style>
</head>
<body>
<div class="shell">

<aside class="sidebar left">
  <div class="brand">
    <svg class="seal-mini" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
      <rect x="3" y="3" width="94" height="94" fill="none" stroke="currentColor" stroke-width="6"/>
      <line x1="50" y1="3" x2="50" y2="97" stroke="currentColor" stroke-width="1.5"/>
      <line x1="3" y1="50" x2="97" y2="50" stroke="currentColor" stroke-width="1.5"/>
      <text x="25" y="42" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">陈</text>
      <text x="75" y="42" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">恒</text>
      <text x="25" y="84" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">之</text>
      <text x="75" y="84" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">印</text>
    </svg>
    <div>
      <div class="name" data-i18n="brand.name">陈恒</div>
      <div class="role" data-i18n="brand.role">Attorney · Independent Developer</div>
    </div>
  </div>

  <nav class="sec-nav">
    <div class="sec-nav-title" data-i18n="nav.title">Sections</div>
    <ul class="sec-nav-list">
      <li class="sec-nav-item"><a href="#practice"><span class="num" data-i18n="nav.n1.n">壹</span><span data-i18n="nav.n1.l">Practice</span><span class="label" data-i18n="nav.n1.r">执业</span></a></li>
      <li class="sec-nav-item"><a href="#currently"><span class="num" data-i18n="nav.n2.n">贰</span><span data-i18n="nav.n2.l">Currently</span><span class="label" data-i18n="nav.n2.r">现在</span></a></li>
      <li class="sec-nav-item"><a href="#development"><span class="num" data-i18n="nav.n3.n">叁</span><span data-i18n="nav.n3.l">Development</span><span class="label" data-i18n="nav.n3.r">发展</span></a></li>
      <li class="sec-nav-item"><a href="#notes"><span class="num" data-i18n="nav.n4.n">肆</span><span data-i18n="nav.n4.l">Notes</span><span class="label" data-i18n="nav.n4.r">随笔</span></a></li>
      <li class="sec-nav-item"><a href="#contact"><span class="num" data-i18n="nav.n5.n">伍</span><span data-i18n="nav.n5.l">Contact</span><span class="label" data-i18n="nav.n5.r">通联</span></a></li>
    </ul>
  </nav>

  <div class="terminal">
    <div class="term-head">
      <span class="dot d1"></span><span class="dot d2"></span><span class="dot d3"></span>
      <span class="title">~/chen-heng — zsh</span>
    </div>
    <div class="term-body" id="term"></div>
  </div>
</aside>

<main class="main">
  <header class="masthead">
    <span class="left" data-i18n="masthead.left">陈恒 · 律师</span>
    <span class="right" data-i18n="masthead.right">第貳期 · MMXXVI · 个人通讯</span>
  </header>

  <section class="hero reveal">
    <div class="hero-slogan-wrap">
      <h1 class="hero-slogan" data-i18n="hero.slogan">法律是<em>秩序</em>，代码是<em>杠杆</em>；<br>我用两把尺子，丈量世界。</h1>
      <svg class="hero-seal" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
        <rect x="3" y="3" width="94" height="94" fill="none" stroke="currentColor" stroke-width="6"/>
        <line x1="50" y1="3" x2="50" y2="97" stroke="currentColor" stroke-width="1.5"/>
        <line x1="3" y1="50" x2="97" y2="50" stroke="currentColor" stroke-width="1.5"/>
        <text x="25" y="42" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">陈</text>
        <text x="75" y="42" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">恒</text>
        <text x="25" y="84" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">之</text>
        <text x="75" y="84" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="34" font-weight="700" fill="currentColor">印</text>
      </svg>
    </div>
    <div class="hero-attribution" data-i18n="hero.attribution">—— 陈恒 · Attorney at Law</div>
  </section>

  <p class="lede reveal">
    <span class="dropcap" data-i18n="lede.dropcap">法</span><span data-i18n="lede.body">律为主业，正在把 AI 训练成自己的<em>「另一双手」</em>。关注法律实务、编程实战与个人长期成长。条文守住底线，代码扩张可能；用两把尺子，丈量秩序与杠杆之间的世界。</span>
  </p>

  <section class="section reveal" id="practice">
    <div class="section-head">
      <span class="section-num" data-i18n="s1.num">壹</span>
      <span class="section-title" data-i18n="s1.title">Practice</span>
      <span class="section-cn" data-i18n="s1.cn">执业领域</span>
      <span class="section-rule"></span>
    </div>
    <div class="practice-grid">
      <div class="practice-item"><span class="idx">N°01</span><span class="cn" data-i18n="p1.cn">民商事诉讼</span><span class="en" data-i18n="p1.en">Litigation</span><p class="desc" data-i18n="p1.desc">合同纠纷、股权争议、侵权责任</p></div>
      <div class="practice-item"><span class="idx">N°02</span><span class="cn" data-i18n="p2.cn">公司治理</span><span class="en" data-i18n="p2.en">Corporate</span><p class="desc" data-i18n="p2.desc">股权设计、合规体系、章程优化</p></div>
      <div class="practice-item"><span class="idx">N°03</span><span class="cn" data-i18n="p3.cn">合同与风控</span><span class="en" data-i18n="p3.en">Contracts</span><p class="desc" data-i18n="p3.desc">起草、审查、谈判全流程</p></div>
      <div class="practice-item"><span class="idx">N°04</span><span class="cn" data-i18n="p4.cn">数据与隐私</span><span class="en" data-i18n="p4.en">Data &amp; Privacy</span><p class="desc" data-i18n="p4.desc">个人信息保护、数据合规</p></div>
      <div class="practice-item"><span class="idx">N°05</span><span class="cn" data-i18n="p5.cn">法律科技</span><span class="en" data-i18n="p5.en">Legal Tech</span><p class="desc" data-i18n="p5.desc">自动化工具、AI 应用</p></div>
      <div class="practice-item"><span class="idx">N°06</span><span class="cn" data-i18n="p6.cn">行业咨询</span><span class="en" data-i18n="p6.en">Industry Counsel</span><p class="desc" data-i18n="p6.desc">互联网、文创、科创</p></div>
    </div>
  </section>

  <section class="section reveal" id="currently">
    <div class="section-head">
      <span class="section-num" data-i18n="s2.num">贰</span>
      <span class="section-title" data-i18n="s2.title">Currently</span>
      <span class="section-cn" data-i18n="s2.cn">现在</span>
      <span class="section-rule"></span>
    </div>
    <div class="current-list">
      <div class="current-item"><span class="label"><span class="icon">📖</span><span data-i18n="c1.label">Reading · 读</span></span><span class="content" data-i18n="c1.text"><em>《法律的道路》</em> · 苏力 &nbsp;/&nbsp; Programming Rust</span></div>
      <div class="current-item"><span class="label"><span class="icon">🔨</span><span data-i18n="c2.label">Building · 造</span></span><span class="content" data-i18n="c2.text">律所文档自动化脚本 &nbsp;·&nbsp; 个人知识管理系统</span></div>
      <div class="current-item"><span class="label"><span class="icon">🧠</span><span data-i18n="c3.label">Learning · 学</span></span><span class="content" data-i18n="c3.text">Rust 所有权 &nbsp;+&nbsp; LLM 工程化</span></div>
      <div class="current-item"><span class="label"><span class="icon">💼</span><span data-i18n="c4.label">Available · 接案</span></span><span class="content" data-i18n="c4.text">民商事诉讼 &nbsp;·&nbsp; 合规咨询（远程优先）</span></div>
    </div>
  </section>

  <section class="section reveal" id="development">
    <div class="section-head">
      <span class="section-num" data-i18n="s3.num">叁</span>
      <span class="section-title" data-i18n="s3.title">Development</span>
      <span class="section-cn" data-i18n="s3.cn">发展</span>
      <span class="section-rule"></span>
    </div>
    <div class="timeline">
      <div class="tl-item"><span class="year">2018</span><span class="dot"></span><div class="title" data-i18n="t1.title">法学硕士</div><div class="desc" data-i18n="t1.desc">LLM · Southwest Univ. of Political Science &amp; Law</div></div>
      <div class="tl-item"><span class="year">2020</span><span class="dot"></span><div class="title" data-i18n="t2.title">执业律师</div><div class="desc" data-i18n="t2.desc">Licensed Attorney · Full-service Law Firm</div></div>
      <div class="tl-item"><span class="year">2023</span><span class="dot"></span><div class="title" data-i18n="t3.title">接触编程</div><div class="desc" data-i18n="t3.desc">Discovered Code · Self-taught Python / Rust</div></div>
      <div class="tl-item"><span class="year">2025</span><span class="dot"></span><div class="title" data-i18n="t4.title">法律 + AI 双轨</div><div class="desc" data-i18n="t4.desc">Law + AI Dual Track · Launched Legal-tech Practice</div></div>
      <div class="tl-item current"><span class="year">2026</span><span class="dot"></span><div class="title" data-i18n="t5.title">持续进化中</div><div class="desc" data-i18n="t5.desc">In Motion · Two Rulers, One Compass</div></div>
    </div>
  </section>

  <section class="section reveal" id="notes">
    <div class="section-head">
      <span class="section-num" data-i18n="s4.num">肆</span>
      <span class="section-title" data-i18n="s4.title">Notes</span>
      <span class="section-cn" data-i18n="s4.cn">随笔</span>
      <span class="section-rule"></span>
    </div>
    <div class="notes-head">
      <span data-i18n="notes.recent">Recent · 近期</span>
      <a href="#" data-i18n="notes.all">查看全部 →</a>
    </div>
    <a class="note-item" href="#" target="_blank" rel="noopener"><span class="date" data-i18n="n1.date">2026 · 06 · 20</span><span class="title" data-i18n="n1.title">法律 AI 应用的边界与底线</span><span class="read">8 min</span></a>
    <a class="note-item" href="#" target="_blank" rel="noopener"><span class="date" data-i18n="n2.date">2026 · 05 · 12</span><span class="title" data-i18n="n2.title">Rust 所有权模型与法律所有权的对照笔记</span><span class="read">12 min</span></a>
    <a class="note-item" href="#" target="_blank" rel="noopener"><span class="date" data-i18n="n3.date">2026 · 04 · 03</span><span class="title" data-i18n="n3.title">从庭审到 IDE：一个律师的代码化转型</span><span class="read">15 min</span></a>
  </section>

  <section class="section reveal" id="contact">
    <div class="section-head">
      <span class="section-num" data-i18n="s5.num">伍</span>
      <span class="section-title" data-i18n="s5.title">Contact</span>
      <span class="section-cn" data-i18n="s5.cn">通联</span>
      <span class="section-rule"></span>
    </div>
    <div class="links">
      <a class="link" href="#" target="_blank" rel="noopener"><span class="num">N°01</span><span class="label"><span class="icon">E</span><span data-i18n="ct1.label">邮箱</span><span class="sub">Email</span></span><span class="arrow">→</span></a>
      <a class="link" href="#" target="_blank" rel="noopener"><span class="num">N°02</span><span class="label"><span class="icon">W</span><span data-i18n="ct2.label">个人网站</span><span class="sub">Website</span></span><span class="arrow">→</span></a>
      <a class="link" href="#" target="_blank" rel="noopener"><span class="num">N°03</span><span class="label"><span class="icon">in</span>LinkedIn<span class="sub">Network</span></span><span class="arrow">→</span></a>
      <a class="link" href="#" target="_blank" rel="noopener"><span class="num">N°04</span><span class="label"><span class="icon">&lt;/&gt;</span>GitHub<span class="sub">Code</span></span><span class="arrow">→</span></a>
    </div>
  </section>

  <div class="signature reveal">
    <svg width="240" height="70" viewBox="0 0 240 70" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
      <text x="120" y="48" text-anchor="middle" font-family="'STKaiti','KaiTi',serif" font-size="42" font-weight="700" fill="currentColor">陈恒</text>
      <path d="M 30 58 Q 80 54 120 58 T 210 56" stroke="currentColor" stroke-width="1.5" fill="none" opacity=".35" stroke-linecap="round"/>
    </svg>
    <div class="sig-label" data-i18n="sig.label">Signed · 签名</div>
  </div>

  <footer class="colophon">
    <span data-i18n="colophon.set">Set in Optima · Helvetica · STKaiti & KaiTi</span>
    <span data-i18n="colophon.made">Made by <em>老六</em> · MMXXVI</span>
  </footer>
</main>

<aside class="sidebar right">
  <div class="sidebar-inner">
    <div class="r-block">
      <div class="r-label" data-i18n="r.clock">Local · 时</div>
      <div class="clock">
        <span class="time-big" id="clock-time">--:--:--</span>
        <span class="date" id="clock-date">---- · -- · --</span>
      </div>
    </div>

    <div class="r-block">
      <div class="r-label" data-i18n="r.lang">Language · 语言</div>
      <div class="lang-group">
        <button class="toggle active" data-lang="zh-CN">简</button>
        <button class="toggle" data-lang="zh-TW">繁</button>
        <button class="toggle" data-lang="en">EN</button>
      </div>
    </div>

    <div class="r-block">
      <div class="r-label" data-i18n="r.theme">Theme · 主题</div>
      <div class="theme-group">
        <button class="toggle" data-theme="light"><span class="ti">☀</span><span class="tl" data-i18n="t.light">浅色</span></button>
        <button class="toggle" data-theme="dark"><span class="ti">☾</span><span class="tl" data-i18n="t.dark">深色</span></button>
        <button class="toggle" data-theme="system"><span class="ti">◐</span><span class="tl" data-i18n="t.system">系统</span></button>
      </div>
    </div>

    <div class="r-block">
      <div class="r-label" data-i18n="r.status">Status · 状态</div>
      <div class="status">
        <span class="pulse"></span>
        <span data-i18n="r.statusText">Available for cases</span>
      </div>
      <div class="status-meta" data-i18n="r.statusMeta">Remote · 远程优先</div>
    </div>
  </div>
</aside>

</div>

<script>
const i18n = {
'zh-CN':{
'brand.name':'陈恒','brand.role':'Attorney · Independent Developer',
'nav.title':'章节目录',
'nav.n1.n':'壹','nav.n1.l':'Practice','nav.n1.r':'执业',
'nav.n2.n':'贰','nav.n2.l':'Currently','nav.n2.r':'现在',
'nav.n3.n':'叁','nav.n3.l':'Development','nav.n3.r':'发展',
'nav.n4.n':'肆','nav.n4.l':'Notes','nav.n4.r':'随笔',
'nav.n5.n':'伍','nav.n5.l':'Contact','nav.n5.r':'通联',
'masthead.left':'陈恒 · 律师','masthead.right':'第貳期 · MMXXVI · 个人通讯',
'hero.slogan':'法律是<em>秩序</em>，代码是<em>杠杆</em>；<br>我用两把尺子，丈量世界。',
'hero.attribution':'—— 陈恒 · 律师 · 建造者',
'lede.dropcap':'法',
'lede.body':'律为主业，正在把 AI 训练成自己的<em>「另一双手」</em>。关注法律实务、编程实战与个人长期成长。条文守住底线，代码扩张可能；用两把尺子，丈量秩序与杠杆之间的世界。',
's1.num':'壹','s1.title':'Practice','s1.cn':'执业领域',
'p1.cn':'民商事诉讼','p1.en':'Litigation','p1.desc':'合同纠纷、股权争议、侵权责任',
'p2.cn':'公司治理','p2.en':'Corporate','p2.desc':'股权设计、合规体系、章程优化',
'p3.cn':'合同与风控','p3.en':'Contracts','p3.desc':'起草、审查、谈判全流程',
'p4.cn':'数据与隐私','p4.en':'Data & Privacy','p4.desc':'个人信息保护、数据合规',
'p5.cn':'法律科技','p5.en':'Legal Tech','p5.desc':'自动化工具、AI 应用',
'p6.cn':'行业咨询','p6.en':'Industry Counsel','p6.desc':'互联网、文创、科创',
's2.num':'贰','s2.title':'Currently','s2.cn':'现在',
'c1.label':'阅读 · 读','c1.text':'《法律的道路》 · 苏力 &nbsp;/&nbsp; Programming Rust',
'c2.label':'建造 · 造','c2.text':'律所文档自动化脚本 &nbsp;·&nbsp; 个人知识管理系统',
'c3.label':'学习 · 学','c3.text':'Rust 所有权 &nbsp;+&nbsp; LLM 工程化',
'c4.label':'接案 · 接','c4.text':'民商事诉讼 &nbsp;·&nbsp; 合规咨询（远程优先）',
's3.num':'叁','s3.title':'Development','s3.cn':'发展',
't1.title':'法学硕士','t1.desc':'LLM · 西南政法大学',
't2.title':'执业律师','t2.desc':'Licensed Attorney · Full-service Law Firm',
't3.title':'接触编程','t3.desc':'Discovered Code · Self-taught Python / Rust',
't4.title':'法律 + AI 双轨','t4.desc':'Law + AI Dual Track · Launched Legal-tech Practice',
't5.title':'持续进化中','t5.desc':'In Motion · Two Rulers, One Compass',
's4.num':'肆','s4.title':'Notes','s4.cn':'随笔',
'notes.recent':'近期 · Recent','notes.all':'查看全部 →',
'n1.date':'2026 · 06 · 20','n1.title':'法律 AI 应用的边界与底线',
'n2.date':'2026 · 05 · 12','n2.title':'Rust 所有权模型与法律所有权的对照笔记',
'n3.date':'2026 · 04 · 03','n3.title':'从庭审到 IDE：一个律师的代码化转型',
's5.num':'伍','s5.title':'Contact','s5.cn':'通联',
'ct1.label':'邮箱','ct2.label':'个人网站',
'sig.label':'已签名 · Signed',
'colophon.set':'Set in Optima · Helvetica · STKaiti',
'colophon.made':'Made by <em>老六</em> · MMXXVI',
'r.clock':'本地时间','r.lang':'语言','r.theme':'主题','r.status':'状态',
't.light':'浅色','t.dark':'深色','t.system':'系统',
'r.statusText':'可接案','r.statusMeta':'远程优先 · Remote-first'
},
'zh-TW':{
'brand.name':'陳恆','brand.role':'Attorney · Independent Developer',
'nav.title':'章節目錄',
'nav.n1.n':'壹','nav.n1.l':'Practice','nav.n1.r':'執業',
'nav.n2.n':'貳','nav.n2.l':'Currently','nav.n2.r':'現在',
'nav.n3.n':'參','nav.n3.l':'Development','nav.n3.r':'發展',
'nav.n4.n':'肆','nav.n4.l':'Notes','nav.n4.r':'隨筆',
'nav.n5.n':'伍','nav.n5.l':'Contact','nav.n5.r':'通聯',
'masthead.left':'陳恆 · 律師','masthead.right':'第貳期 · MMXXVI · 個人通訊',
'hero.slogan':'法律是<em>秩序</em>，代碼是<em>槓桿</em>；<br>我用兩把尺子，丈量世界。',
'hero.attribution':'—— 陳恆 · 律師 · 建造者',
'lede.dropcap':'法',
'lede.body':'律為主業，正在把 AI 訓練成自己的<em>「另一雙手」</em>。關注法律實務、編程實戰與個人長期成長。條文守住底線，代碼擴張可能；用兩把尺子，丈量秩序與槓桿之間的世界。',
's1.num':'壹','s1.title':'Practice','s1.cn':'執業領域',
'p1.cn':'民商事訴訟','p1.en':'Litigation','p1.desc':'合同糾紛、股權爭議、侵權責任',
'p2.cn':'公司治理','p2.en':'Corporate','p2.desc':'股權設計、合規體系、章程優化',
'p3.cn':'合同與風控','p3.en':'Contracts','p3.desc':'起草、審查、談判全流程',
'p4.cn':'數據與隱私','p4.en':'Data & Privacy','p4.desc':'個人信息保護、數據合規',
'p5.cn':'法律科技','p5.en':'Legal Tech','p5.desc':'自動化工具、AI 應用',
'p6.cn':'行業諮詢','p6.en':'Industry Counsel','p6.desc':'互聯網、文創、科創',
's2.num':'貳','s2.title':'Currently','s2.cn':'現在',
'c1.label':'閱讀 · 讀','c1.text':'《法律的道路》 · 蘇力 &nbsp;/&nbsp; Programming Rust',
'c2.label':'建造 · 造','c2.text':'律所文檔自動化腳本 &nbsp;·&nbsp; 個人知識管理系統',
'c3.label':'學習 · 學','c3.text':'Rust 所有權 &nbsp;+&nbsp; LLM 工程化',
'c4.label':'接案 · 接','c4.text':'民商事訴訟 &nbsp;·&nbsp; 合規諮詢（遠程優先）',
's3.num':'參','s3.title':'Development','s3.cn':'發展',
't1.title':'法學碩士','t1.desc':'LLM · 西南政法大學',
't2.title':'執業律師','t2.desc':'Licensed Attorney · Full-service Law Firm',
't3.title':'接觸編程','t3.desc':'Discovered Code · Self-taught Python / Rust',
't4.title':'法律 + AI 雙軌','t4.desc':'Law + AI Dual Track · Launched Legal-tech Practice',
't5.title':'持續進化中','t5.desc':'In Motion · Two Rulers, One Compass',
's4.num':'肆','s4.title':'Notes','s4.cn':'隨筆',
'notes.recent':'近期 · Recent','notes.all':'查看全部 →',
'n1.date':'2026 · 06 · 20','n1.title':'法律 AI 應用的邊界與底線',
'n2.date':'2026 · 05 · 12','n2.title':'Rust 所有權模型與法律所有權的對照筆記',
'n3.date':'2026 · 04 · 03','n3.title':'從庭審到 IDE：一個律師的代碼化轉型',
's5.num':'伍','s5.title':'Contact','s5.cn':'通聯',
'ct1.label':'郵箱','ct2.label':'個人網站',
'sig.label':'已簽名 · Signed',
'colophon.set':'Set in Optima · Helvetica · STKaiti',
'colophon.made':'Made by <em>老六</em> · MMXXVI',
'r.clock':'本地時間','r.lang':'語言','r.theme':'主題','r.status':'狀態',
't.light':'淺色','t.dark':'深色','t.system':'系統',
'r.statusText':'可接案','r.statusMeta':'遠程優先 · Remote-first'
},
'en':{
'brand.name':'陳恆','brand.role':'Attorney · Independent Developer',
'nav.title':'Sections',
'nav.n1.n':'I','nav.n1.l':'Practice','nav.n1.r':'Areas',
'nav.n2.n':'II','nav.n2.l':'Currently','nav.n2.r':'Now',
'nav.n3.n':'III','nav.n3.l':'Development','nav.n3.r':'Path',
'nav.n4.n':'IV','nav.n4.l':'Notes','nav.n4.r':'Writings',
'nav.n5.n':'V','nav.n5.l':'Contact','nav.n5.r':'Reach',
'masthead.left':'Chen Heng · Attorney','masthead.right':'Vol. <em>II</em> · MMXXVI · Dispatch',
'hero.slogan':'Law is <em>order</em>, code is <em>leverage</em>;<br>I measure the world with two rulers.',
'hero.attribution':'— Chen Heng · Attorney · Independent Developer',
'lede.dropcap':'L',
'lede.body':'aw is my trade; I am training AI to be my <em>"other pair of hands."</em> I work at the intersection of legal practice, code, and lifelong growth. Statutes set the floor; code expands the ceiling. With two rulers, I measure the world between order and leverage.',
's1.num':'I','s1.title':'Practice','s1.cn':'Areas',
'p1.cn':'Civil & Commercial','p1.en':'Litigation','p1.desc':'Contracts, equity disputes, torts',
'p2.cn':'Corporate Governance','p2.en':'Corporate','p2.desc':'Equity design, compliance systems, bylaws',
'p3.cn':'Contracts & Risk','p3.en':'Contracts','p3.desc':'Drafting, review, end-to-end negotiation',
'p4.cn':'Data & Privacy','p4.en':'Data & Privacy','p4.desc':'PIPL compliance, data governance',
'p5.cn':'Legal Tech','p5.en':'Legal Tech','p5.desc':'Automation tooling, applied AI',
'p6.cn':'Industry Counsel','p6.en':'Industry Counsel','p6.desc':'Internet, culture, deep-tech sectors',
's2.num':'II','s2.title':'Currently','s2.cn':'Now',
'c1.label':'Reading','c1.text':'The Road of Law · Su Li &nbsp;/&nbsp; Programming Rust',
'c2.label':'Building','c2.text':'Document automation scripts &nbsp;·&nbsp; personal knowledge system',
'c3.label':'Learning','c3.text':'Rust ownership &nbsp;+&nbsp; LLM engineering',
'c4.label':'Available','c4.text':'Civil / commercial litigation &nbsp;·&nbsp; compliance counsel (remote-first)',
's3.num':'III','s3.title':'Development','s3.cn':'Path',
't1.title':'LLM in Law','t1.desc':'Master of Laws · Southwest Univ. of Political Science & Law',
't2.title':'Licensed Attorney','t2.desc':'Practicing Lawyer · Full-service Law Firm',
't3.title':'Discovered Code','t3.desc':'Self-taught · Python / Rust',
't4.title':'Law + AI Dual Track','t4.desc':'Launched Legal-tech Practice',
't5.title':'In Motion','t5.desc':'Two Rulers, One Compass',
's4.num':'IV','s4.title':'Notes','s4.cn':'Writings',
'notes.recent':'Recent','notes.all':'View all →',
'n1.date':'2026 · 06 · 20','n1.title':'The Floor and Ceiling of Legal AI',
'n2.date':'2026 · 05 · 12','n2.title':'Rust Ownership vs. Legal Ownership',
'n3.date':'2026 · 04 · 03','n3.title':'From Courtroom to IDE: A Lawyer\'s Code-fied Pivot',
's5.num':'V','s5.title':'Contact','s5.cn':'Reach',
'ct1.label':'Email','ct2.label':'Website',
'sig.label':'Signed',
'colophon.set':'Set in Optima · Helvetica · STKaiti',
'colophon.made':'Made by <em>老六</em> · MMXXVI',
'r.clock':'Local Time','r.lang':'Language','r.theme':'Theme','r.status':'Status',
't.light':'Light','t.dark':'Dark','t.system':'System',
'r.statusText':'Available for cases','r.statusMeta':'Remote-first'
}
};

function applyLang(lang){
document.documentElement.lang=(lang==='en')?'en':(lang==='zh-TW')?'zh-Hant':'zh-CN';
const dict=i18n[lang]||i18n['zh-CN'];
document.querySelectorAll('[data-i18n]').forEach(el=>{
const k=el.getAttribute('data-i18n');
if(dict[k]!==undefined) el.innerHTML=dict[k];
});
document.querySelectorAll('.lang-group .toggle').forEach(b=>{
b.classList.toggle('active',b.getAttribute('data-lang')===lang);
});
try{localStorage.setItem('lang',lang);}catch(e){}
}

function applyTheme(mode){
const resolved = mode==='system'
?(window.matchMedia&&window.matchMedia('(prefers-color-scheme: dark)').matches?'dark':'light')
:mode;
document.documentElement.setAttribute('data-theme',resolved);
document.documentElement.setAttribute('data-theme-mode',mode);
document.querySelectorAll('.theme-group .toggle').forEach(b=>{
b.classList.toggle('active',b.getAttribute('data-theme')===mode);
});
try{localStorage.setItem('theme',mode);}catch(e){}
}

// Clock
function updateClock(){
const d=new Date();
const pad=n=>String(n).padStart(2,'0');
const t=pad(d.getHours())+':'+pad(d.getMinutes())+':'+pad(d.getSeconds());
const months=['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC'];
const days=['SUN','MON','TUE','WED','THU','FRI','SAT'];
const dateStr=days[d.getDay()]+' · '+months[d.getMonth()]+' '+pad(d.getDate());
const el1=document.getElementById('clock-time');
const el2=document.getElementById('clock-date');
if(el1) el1.textContent=t;
if(el2) el2.textContent=dateStr;
}
setInterval(updateClock,1000);
updateClock();

// Terminal Q&A typewriter (slower, page-grounded)
const termScripts={
'zh-CN':[
{q:'>  你是谁',a:'陈恒 · 律师 · 建造者'},
{q:'>  信条',a:'「法律是秩序，代码是杠杆」'},
{q:'>  业务方向',a:'诉讼 · 公司治理 · 数据合规 · 法务科技'},
{q:'>  此刻在读',a:'《法律的道路》· 苏力   /   Programming Rust'},
{q:'>  正在造',a:'律所文档自动化 · 个人知识管理系统'},
{q:'>  接案吗',a:'民商事诉讼 · 合规咨询（远程优先）'},
{q:'>  怎么联系',a:'邮箱 · LinkedIn · GitHub  →  页底'}
],
'zh-TW':[
{q:'>  你是誰',a:'陳恆 · 律師 · 建造者'},
{q:'>  信條',a:'「法律是秩序，代碼是槓桿」'},
{q:'>  業務方向',a:'訴訟 · 公司治理 · 數據合規 · 法務科技'},
{q:'>  此刻在讀',a:'《法律的道路》· 蘇力   /   Programming Rust'},
{q:'>  正在造',a:'律所文檔自動化 · 個人知識管理系統'},
{q:'>  接案嗎',a:'民商事訴訟 · 合規諮詢（遠程優先）'},
{q:'>  怎麼聯繫',a:'郵箱 · LinkedIn · GitHub  →  頁底'}
],
'en':[
{q:'>  whoami',a:'Chen Heng · Attorney · Independent Developer'},
{q:'>  belief',a:'"Law is order, code is leverage."'},
{q:'>  practice',a:'Litigation · Corporate · Data & Privacy · Legal Tech'},
{q:'>  reading',a:'"The Path of Law" by Su Li  /  Programming Rust'},
{q:'>  building',a:'Firm doc automation · Personal knowledge base'},
{q:'>  available',a:'Litigation · Compliance counsel · remote-first'},
{q:'>  contact',a:'Email · LinkedIn · GitHub  →  page bottom'}
]
};

async function runTerminal(termEl){
const sleep=ms=>new Promise(r=>setTimeout(r,ms));
const typeCmd=async(text)=>{
const div=document.createElement('span');
div.className='term-line term-cmd';
div.textContent='';
termEl.appendChild(div);
for(let i=0;i<text.length;i++){
div.textContent=text.slice(0,i+1);
await sleep(75+Math.random()*45);
}
termEl.appendChild(document.createTextNode('\n'));
termEl.scrollTop=termEl.scrollHeight;
};
const typeOut=async(text)=>{
const div=document.createElement('span');
div.className='term-line term-out';
div.textContent=text;
termEl.appendChild(div);
termEl.appendChild(document.createTextNode('\n'));
termEl.scrollTop=termEl.scrollHeight;
};
const scripts=termScripts[currentLang]||termScripts['zh-CN'];
while(true){
for(const pair of scripts){
await typeCmd(pair.q);
await sleep(450);
await typeOut(pair.a);
await sleep(1500);
}
await sleep(3000);
termEl.innerHTML='';
}
}

let currentLang='zh-CN';
const termEl=document.getElementById('term');
if(termEl) runTerminal(termEl);

// Initialize
const savedLang=(()=>{try{return localStorage.getItem('lang');}catch(e){return null;}})();
const savedTheme=(()=>{try{return localStorage.getItem('theme');}catch(e){return null;}})();
currentLang=(savedLang&&i18n[savedLang])?savedLang:'zh-CN';
applyLang(currentLang);
applyTheme(savedTheme==='dark'||savedTheme==='light'||savedTheme==='system'?savedTheme:'system');

// React to OS theme changes when in system mode
if(window.matchMedia){
window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change',()=>{
const cur=(()=>{try{return localStorage.getItem('theme');}catch(e){return 'system';}})();
if(cur==='system') applyTheme('system');
});
}

// Section nav active state (scroll observer)
const sectionIds=['practice','currently','development','notes','contact'];
const navItems=document.querySelectorAll('.sec-nav-item');
const observer=new IntersectionObserver(entries=>{
entries.forEach(entry=>{
if(entry.isIntersecting){
const id=entry.target.id;
navItems.forEach(item=>{
const link=item.querySelector('a');
const href=link.getAttribute('href').replace('#','');
item.classList.toggle('active',href===id);
});
}
});
},{rootMargin:'-40% 0px -55% 0px',threshold:0});
document.querySelectorAll('.section').forEach(s=>observer.observe(s));

// Section reveal on scroll
const revealObserver=new IntersectionObserver(entries=>{
entries.forEach(entry=>{
if(entry.isIntersecting) entry.target.classList.add('in');
});
},{threshold:0.1});
document.querySelectorAll('.reveal').forEach(el=>revealObserver.observe(el));

// Bind toggles
document.querySelectorAll('.lang-group .toggle').forEach(b=>{
b.addEventListener('click',()=>{
const lang=b.getAttribute('data-lang');
currentLang=lang;
applyLang(lang);
// Re-run terminal with new language
if(termEl){termEl.innerHTML='';runTerminal(termEl);}
});
});
document.querySelectorAll('.theme-group .toggle').forEach(b=>{
b.addEventListener('click',()=>applyTheme(b.getAttribute('data-theme')));
});
</script>
</body>
</html>
CARD_EOF
echo "File written, size:"
wc -c /tmp/profile-card.html