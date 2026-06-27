window.__errs=[];
window.addEventListener('error',e=>{
window.__errs.push({msg:e.message,line:e.lineno,col:e.colno,stack:e.error&&e.error.stack});
});
window.addEventListener('unhandledrejection',e=>{
window.__errs.push({msg:'UnhandledRejection: '+(e.reason&&e.reason.message?e.reason.message:e.reason),stack:e.reason&&e.reason.stack});
});
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
window.__phase='after-runTerminal';

// Initialize
const savedLang=(()=>{try{return localStorage.getItem('lang');}catch(e){return null;}})();
const savedTheme=(()=>{try{return localStorage.getItem('theme');}catch(e){return null;}})();
currentLang=(savedLang&&i18n[savedLang])?savedLang:'zh-CN';
applyLang(currentLang);
applyTheme(savedTheme==='dark'||savedTheme==='light'||savedTheme==='system'?savedTheme:'system');
window.__phase='after-applyTheme';

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
window.__phase='after-section-observer';

// Section reveal on scroll
// Anything already in viewport on page load gets revealed immediately —
// hero is the most important, never hide it behind a scroll trigger that
// might be delayed or unsupported in some embedding contexts.
const revealObserver=new IntersectionObserver(entries=>{
entries.forEach(entry=>{
if(entry.isIntersecting){
entry.target.classList.add('in');
revealObserver.unobserve(entry.target);
}
});
},{threshold:0.1,rootMargin:'0px 0px -40px 0px'});
document.querySelectorAll('.reveal').forEach(el=>{
const r=el.getBoundingClientRect();
if(r.top<window.innerHeight&&r.bottom>0){
el.classList.add('in');
}else{
revealObserver.observe(el);
}
});
window.__phase='after-reveal-foreach';

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
