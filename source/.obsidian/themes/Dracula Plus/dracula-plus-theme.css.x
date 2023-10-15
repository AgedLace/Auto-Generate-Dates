:root {
  --vt-ml: 0px;
  --vt-fsize: 28px;
  --font-size-normal: 16px;
  --font-size-code: 13px;
  --font-size-side-dock: 13px;
  --font-size-side-dock-title: 15px;
  --font-size-status-bar: 13px;
  --font-size-h1: 25px;
  --font-size-h2: 20px;
  --font-size-h3: 19px;
  --font-size-h4: 18px;
  --font-size-h5: 17px;
  --font-size-h6: 16px;
  --font-family-editor: Avenir, Avenir Next, sans-serif;
  --font-family-preview: Avenir, Avenir Next, sans-serif;
}

body {
  --color-user-request: #ffffff13;
  --nav-item-background-hover: var(--color-user-request);
  --nav-item-background-active: var(--color-user-request);
  --background-modifier-hover: var(--color-user-request);
  --indentation-guide-color: #ffffff30;
  /*Fonts*/
  --font-monospace-theme: "JetBrains Mono", "Fira Code", Menlo, SFMono-Regular,
    Consolas, "Roboto Mono", monospace;

  /*Headings*/
  --text-title-h1: #ff79c6;
  --text-title-h2: #bd93f9;
  --text-title-h3: #ff5555;
  --text-title-h4: #ffb86c;
  --text-title-h5: #50fa7b;
  --text-title-h6: #8be9fd;
}

.theme-light,
.theme-dark {
  --color-pink: #ff22b1;
  --color-yellow: #e9e90c;
  --color-cyan: #00ffff;
  --background-primary: #020517;
  --background-primary-alt: #44475a;
  --background-secondary: #020517;
  --background-secondary-alt: #282a36;
  --background-accent: #f8f8f2;
  --background-modifier-border: #f8f8f2;
  --background-modifier-form-field: rgba(0, 0, 0, 0.2);
  --background-modifier-form-field-highlighted: rgba(0, 0, 0, 0.5);
  --background-modifier-box-shadow: rgba(0, 0, 0, 0.3);
  --background-modifier-success: #50fa7b;
  /*no sure*/
  --background-modifier-error: #3d0000;
  /*no sure*/
  --background-modifier-error-rgb: 61, 0, 0;
  --background-modifier-error-hover: #470000;
  --background-modifier-cover: rgba(0, 0, 0, 0.6);
  --text-accent: #ffb86c;
  --text-accent-hover: #8be9fd;
  --text-normal: #f8f8f2;
  --text-muted: #f8f8f2;
  --text-faint: #bd93f9;
  --text-highlight-bg: #ff5555;
  --text-error: #ff79c6;
  --text-error-hover: #ff79c6;
  --text-selection: #6272a4;
  /* Chromium precess this color with alpha channel */
  --interactive-normal: #44475a;
  --interactive-hover: #ff5555;
  /* --interactive-accent: var(--color-accent-1); */
  --interactive-accent-rgb: 123, 108, 217;
  /* --interactive-accent-hover: #ff5555; */
  --inline-code: #e9e90c;
  --code-block: #8be9fd;
  --pre-code: #1d1c39;
  --code-background: #1d1c39;
  --blockquote-border: #ffb86c;
  --vim-cursor: #ff5555;
  --border-color: #2b2727;
  --border-modified-color: #f8f8f2;
  --vtcolor1: rgb(130, 57, 226);
  --vtcolor2: rgb(82, 236, 247);
  --empty-line-height: 1em;
  --checkbox-color: #bd93f9;
  --hr-color: white;
  /*also like transparent*/
}

/*-------------------------------------*/
/*      Search the following lines     */
/*     to jump to specific section     */
/*-------------------------------------*/
/*   modify font nav folder title      */
/*  add folder icons and file type     */
/*  resize-handle and borders          */
/*                tags                 */
/*                link                 */
/*                Cursor               */
/* basic format in EDITOR and PREVIEW  */
/* Headings - EDITOR and PREVIEW       */
/*         Code block in  Preview      */
/*       Code block in Editor          */
/*              Brackets               */
/*             Blockquote              */
/*             table                   */
/*               Checkbox              */
/*           html in editor            */
/*              popover                */
/*            Side panel               */
/* internal embedded link in preview   */
/*             graph view              */
/*            settings                 */
/*           width of content          */
/*    at a rule line before ul list    */
/*  Hide Scrollbar (recommend for mac) */
/*-------------------------------------*/

/***************************************/
/*   modify font nav folder title      */
/***************************************/

.nav-file-title,
.nav-folder-title {
  font-size: 14px;
}

.nav-folder.mod-root > .nav-folder-title,
.workspace-drawer-header-name-text {
  font-size: var(--vt-fsize);
  font-family: var(--font-family-editor);
  margin-left: var(--vt-ml);
  margin-bottom: 5px;
  font-weight: bold;
}

/***************************************/
/*  add folder icons and file type     */
/***************************************/

.nav-folder:not(.mod-root) .nav-folder-title-content::before {
  display: inline-block;
  content: "";
  margin-right: 5px;
  vertical-align: text-bottom;
  height: 15px;
  width: 15px;
  background-color: var(--interactive-accent);
  /* filter: brightness(75%) */
}

.nav-folder:not(.mod-root):not(.is-collapsed)
  .nav-folder-title-content::before {
  -webkit-mask: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' height='1em' viewBox='0 0 512 512'%3E%3Cpath d='M384 480h48c11.4 0 21.9-6 27.6-15.9l112-192c5.8-9.9 5.8-22.1 .1-32.1S555.5 224 544 224H144c-11.4 0-21.9 6-27.6 15.9L48 357.1V96c0-8.8 7.2-16 16-16H181.5c4.2 0 8.3 1.7 11.3 4.7l26.5 26.5c21 21 49.5 32.8 79.2 32.8H416c8.8 0 16 7.2 16 16v32h48V160c0-35.3-28.7-64-64-64H298.5c-17 0-33.3-6.7-45.3-18.7L226.7 50.7c-12-12-28.3-18.7-45.3-18.7H64C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H87.7 384z'/%3E%3C/svg%3E")
    no-repeat;
}

.nav-folder:not(.mod-root).is-collapsed .nav-folder-title-content::before {
  -webkit-mask: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' height='1em' viewBox='0 0 512 512'%3E%3Cpath d='M64 480H448c35.3 0 64-28.7 64-64V160c0-35.3-28.7-64-64-64H288c-10.1 0-19.6-4.7-25.6-12.8L243.2 57.6C231.1 41.5 212.1 32 192 32H64C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64z'/%3E%3C/svg%3E")
    no-repeat;
}

.workspace-leaf-content[data-type="file-explorer"]
  .nav-file-title
  .nav-file-title-content::before {
  margin-right: 4px;
  position: relative;
  content: " ";
  display: inline-block;
  width: 20px;
  height: 20px;
  vertical-align: -5px;
  background-color: white;
  -webkit-mask-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='none' viewBox='0 0 20 20'%3e%3cg clip-path='url(%23a)'%3e%3cpath fill='black' fill-opacity='.1' stroke='black' d='M14 17.5H6A1.5 1.5 0 0 1 4.5 16V4A1.5 1.5 0 0 1 6 2.5h5.086a.5.5 0 0 1 .353.146l3.915 3.915a.5.5 0 0 1 .146.353V16a1.5 1.5 0 0 1-1.5 1.5Z'/%3e%3cpath stroke='black' d='M11.5 2.5v3a1 1 0 0 0 1 1h3'/%3e%3crect width='8' height='1' x='6' y='13' fill='black' rx='.5'/%3e%3crect width='8' height='1' x='6' y='15' fill='black' rx='.5'/%3e%3cpath fill='black' d='M6.952 12c.2 0 .28-.04.28-.176 0-.168-.28-.392-.28-.648l.44-.92h2.232l.44.92c0 .256-.28.48-.28.648 0 .136.072.176.28.176h1.608c.2 0 .28-.04.28-.176 0-.168-.304-.4-.416-.648 0 0-1.96-4.008-2.096-4.52 0 0-.096-.24-.432-.24-.336 0-.424.216-.424.216-.144.528-2.168 4.544-2.168 4.544-.12.248-.416.48-.416.648 0 .136.072.176.272.176h.68Zm2.456-2.2h-1.8l.896-1.912.904 1.912Z'/%3e%3c/g%3e%3cdefs%3e%3cclipPath id='a'%3e%3cpath fill='white' d='M0 0h20v20H0z'/%3e%3c/clipPath%3e%3c/defs%3e%3c/svg%3e");
}

.workspace-leaf-content[data-type="file-explorer"]
  .nav-file-title:is(
    [data-path$=".svg"],
    [data-path$=".bmp"],
    [data-path$=".jpeg"],
    [data-path$=".jpg"],
    [data-path$=".png"],
    [data-path$=".gif"]
  )
  > .nav-file-title-content::before {
  background-color: white;
  -webkit-mask-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='none' viewBox='0 0 20 20'%3e%3cg fill='black' clip-path='url(%23a)'%3e%3cpath d='M16 4.5H4c-.83 0-1.5.67-1.5 1.5v8c0 .83.67 1.5 1.5 1.5h12c.83 0 1.5-.67 1.5-1.5V6c0-.83-.67-1.5-1.5-1.5ZM5.25 6A1.23 1.23 0 0 1 6.5 7.25 1.23 1.23 0 0 1 5.25 8.5 1.23 1.23 0 0 1 4 7.25 1.23 1.23 0 0 1 5.25 6ZM4 12.4 6 10l2 1.07L12 7l4 3.27V14H4v-1.6Z' opacity='.1'/%3e%3cpath d='M16 4H4c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2Zm1 10c0 .55-.45 1-1 1H4c-.55 0-1-.45-1-1V6c0-.55.45-1 1-1h12c.55 0 1 .45 1 1v8Z'/%3e%3cpath fill-opacity='.8' d='M16 10.27V14H4v-1.6L6 10l2 1.07L12 7l4 3.27ZM6.5 7.25A1.23 1.23 0 0 1 5.25 8.5 1.23 1.23 0 0 1 4 7.25 1.23 1.23 0 0 1 5.25 6 1.23 1.23 0 0 1 6.5 7.25Z'/%3e%3c/g%3e%3cdefs%3e%3cclipPath id='a'%3e%3cpath fill='white' d='M0 0h20v20H0z'/%3e%3c/clipPath%3e%3c/defs%3e%3c/svg%3e");
}

/***************************************/
/*  resize-handle and borders          */
/***************************************/

/*vertical resize-handle*/
.workspace-split.mod-vertical > * > .workspace-leaf-resize-handle,
.workspace-split.mod-left-split > .workspace-leaf-resize-handle,
.workspace-split.mod-right-split > .workspace-leaf-resize-handle {
  width: 1px !important;
  background-color: var(--border-color);
}

/*horizontal resize-handle*/
.workspace-split.mod-horizontal > * > .workspace-leaf-resize-handle {
  height: 1px !important;
  background-color: var(--border-color);
}

/*workspace ribbon when collapsed*/
.workspace-ribbon.is-collapsed {
  background-color: var(--background-primary-alt);
}

/*the vertical split*/
.workspace-split.mod-root .workspace-split.mod-vertical .workspace-leaf-content,
.workspace-split.mod-vertical > .workspace-split,
.workspace-split.mod-vertical > .workspace-leaf,
.workspace-tabs {
  padding-right: 0px;
}

/*status-bar*/
.status-bar {
  font-size: var(--font-size-status-bar);
  background-color: var(--background-secondary-alt);
  border-top: 0px;
}

.document-search-container {
  border-top: 0px;
  border-right: 0px;
  z-index: inherit;
}

.workspace-ribbon.mod-left.is-collapsed {
  border-right: 1px solid var(--border-color);
}

.workspace-ribbon.mod-right.is-collapsed {
  border-left: 1px solid var(--border-color);
}

/*************************************/
/*                tags               */
/*************************************/

/* Tag hover in preview */
a.tag:hover {
  color: var(--text-accent) !important;
}

/* Tag Color in editor and preview*/
.cm-hashtag,
a.tag {
  color: var(--text-accent-hover) !important;
  text-decoration: none !important;
  font-style: normal !important;
}

/*********************************/
/*             link              */
/*********************************/

/* link */
a,
.internal-link,
.cm-hmd-internal-link,
.cm-link,
.cm-formatting-link,
.cm-url {
  text-decoration: none !important;
}

/* the url string in editor */
/* .cm-s-obsidian span.cm-string {
  color: var(--text-accent-hover) !important;
} */

/* make external links italics to differentiate */
a:not(.internal-link) {
  font-style: italic;
}

/*footnote*/
.cm-s-obsidian pre.HyperMD-footnote span.cm-hmd-footnote,
.cm-s-obsidian span.cm-footref {
  color: var(--text-accent) !important;
}

/***************************************/
/*                Cursor               */
/***************************************/

/* Cursor color and opacity */

.cm-fat-cursor .CodeMirror-cursor,
.cm-animate-fat-cursor {
  width: 0.5em;
  background: var(--vim-cursor);
  opacity: 60% !important;
}

/**************************************/
/* basic format in EDITOR and PREVIEW */
/**************************************/

/* font for everything outside of editor/preview panes */
.app-container {
  font-family: var(--font-family-preview);
}

/* set the text selection color for preview mode */
::-moz-selection {
  background-color: var(--text-selection);
}

::selection {
  background-color: var(--text-selection);
}

/* normal text outside of headings and code of editor */
.cm-s-obsidian,
.mod-single-child .cm-s-obsidian {
  font-family: var(--font-family-editor);
  font-size: var(--font-size-normal);
}

/* normal text outside of headings and code of preview */
.markdown-preview-view,
.mod-single-child .markdown-preview-view {
  font-family: var(--font-family-editor);
  font-size: var(--font-size-normal);
  /* padding-top: 0px; */
  padding-left: 2% !important;
  padding-right: 1% !important;
}

/* bold in preview and editor */
strong,
.cm-strong {
  font-weight: 600;
  color: #50fa7b;
}

/* emphasis in preview and editor */
em,
.cm-em {
  color: var(--text-accent);
  font-style: italic;
}

/* strikethrough in preview and editor */
s,
.cm-strikethrough {
  color: var(--text-muted);
}

/* list in editor */
.cm-s-obsidian span.cm-formatting-list {
  color: var(--text-normal) !important;
}

/* horizontal line in preview */
.markdown-preview-view hr {
  background-color: var(--text-faint) !important;
}

/* embedded images */
img:not(.emoji) {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

/* img hover zoom out img*/
img:hover {
  transform: scale(1.04);
  transition: transform 0.25s ease-in-out 0s;
}

.community-theme img:hover {
  transform: none;
}

/*********************************/
/* Headings - EDITOR and PREVIEW */
/*********************************/

/* headings for editor and preview */
.cm-header-1,
.markdown-preview-view h1 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h1);
  color: var(--text-title-h1);
}

.cm-header-2,
.markdown-preview-view h2 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h2);
  color: var(--text-title-h2);
}

.cm-header-3,
.markdown-preview-view h3 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h3);
  color: var(--text-title-h3);
}

.cm-header-4,
.markdown-preview-view h4 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h4);
  color: var(--text-title-h4);
}

.cm-header-5,
.markdown-preview-view h5 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h5);
  color: var(--text-title-h5);
}

.cm-header-6,
.markdown-preview-view h6 {
  font-family: var(--font-family-editor);
  font-weight: 500;
  font-size: var(--font-size-h6);
  color: var(--text-title-h6);
}

/***************************************/
/*         Code block in  Preview      */
/***************************************/

/* code blocks in preview */
pre code {
  /* font-family: monaco !important; */
  font-size: var(--font-size-code) !important;
  padding: 6px !important;
  line-height: normal;
  display: block;
  color: var(--code-block) !important;
}

/* .markdown-source-view.mod-cm6 .cm-line.HyperMD-codeblock {
  padding-left: var(--size-4-4);
  color: var(--code-block);
} */

/* padding of code blocks in preview */
.markdown-preview-view pre {
  /* padding: 0px !important; */
  padding: 0.75em 1em;
  margin: 0 0 var(--empty-line-height) 0;
}

.markdown-rendered pre {
  background-color: var(--pre-code);
}
/* font-size of in-line block for preview */
.markdown-preview-view code {
  font-size: var(--font-size-code);
}

/* remove the shadow that typically affect light mode */
.theme-dark code[class*="language-"],
.theme-dark pre[class*="language-"],
.theme-light code[class*="language-"],
.theme-light pre[class*="language-"] {
  text-shadow: none !important;
  /* color: var(--text-faint) !important; */
  color: var(--text-normal) !important;
  background-color: var(--pre-code);
}

/***************************************/
/*              Brackets               */
/***************************************/

.cm-s-obsidian span.cm-formatting-link {
  color: var(--text-accent) !important;
}

/***************************************/
/*             Blockquote              */
/***************************************/

/* for editor */
.cm-quote {
  color: var(--text-normal) !important;
  font-style: italic;
}

/* for preview */
.markdown-preview-view blockquote {
  background-color: var(--pre-code);
  border: 0px solid;
  border-color: var(--blockquote-border) !important;
  border-left-width: 4px !important;
  border-radius: 0 8px 8px 0;
  line-height: 1.5em;
  margin: 30px 0px;
  font-style: italic;
}

/***************************************/
/*             table                   */
/***************************************/

th {
  font-weight: 800 !important;
}

.markdown-preview-view th {
  font-weight: 800;
  background-color: var(--background-secondary) !important;
}

thead {
  border-bottom: 3px solid var(--background-modifier-border);
}

.table {
  padding: 4px;
  line-height: normal;
  display: block;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
}

/***************************************/
/*               Checkbox              */
/***************************************/

/* Completed checkboxes */
.markdown-preview-view ul > li.task-list-item.is-checked,
.markdown-source-view.mod-cm6 .HyperMD-task-line[data-task="x"],
.markdown-source-view.mod-cm6 .HyperMD-task-line[data-task="X"],
.markdown-source-view.mod-cm6 .HyperMD-task-line[data-task="M"] {
  text-decoration: none;
  color: var(--text-faint);
}

input[data-task="!"]:checked,
input[data-task="*"]:checked,
input[data-task="-"]:checked,
input[data-task="<"]:checked,
input[data-task=">"]:checked,
input[data-task="I"]:checked,
input[data-task="b"]:checked,
input[data-task="c"]:checked,
input[data-task="d"]:checked,
input[data-task="f"]:checked,
input[data-task="k"]:checked,
input[data-task="l"]:checked,
input[data-task="p"]:checked,
input[data-task="u"]:checked,
input[data-task="w"]:checked,
input[data-task="P"]:checked,
input[data-task="M"]:checked,
input[data-task="D"]:checked,
input[data-task="S"]:checked,
input[data-task="i"]:checked,
input[data-task='"']:checked,
input[data-task="?"]:checked,
input[data-task="t"]:checked,
li[data-task="!"] > input:checked,
li[data-task="!"] > p > input:checked,
li[data-task="?"] > input:checked,
li[data-task="?"] > p > input:checked,
li[data-task="*"] > input:checked,
li[data-task="*"] > p > input:checked,
li[data-task="-"] > input:checked,
li[data-task="-"] > p > input:checked,
li[data-task="<"] > input:checked,
li[data-task="<"] > p > input:checked,
li[data-task=">"] > input:checked,
li[data-task=">"] > p > input:checked,
li[data-task="I"] > input:checked,
li[data-task="I"] > p > input:checked,
li[data-task="b"] > input:checked,
li[data-task="b"] > p > input:checked,
li[data-task="c"] > input:checked,
li[data-task="c"] > p > input:checked,
li[data-task="d"] > input:checked,
li[data-task="d"] > p > input:checked,
li[data-task="f"] > input:checked,
li[data-task="f"] > p > input:checked,
li[data-task="i"] > input:checked,
li[data-task="i"] > p > input:checked,
li[data-task="k"] > input:checked,
li[data-task="k"] > p > input:checked,
li[data-task="l"] > input:checked,
li[data-task="l"] > p > input:checked,
li[data-task="p"] > input:checked,
li[data-task="p"] > p > input:checked,
li[data-task="t"] > input:checked,
li[data-task="t"] > p > input:checked,
li[data-task='"'] > input:checked,
li[data-task='"'] > p > input:checked,
li[data-task="u"] > input:checked,
li[data-task="u"] > p > input:checked,
li[data-task="w"] > input:checked,
li[data-task="w"] > p > input:checked,
li[data-task="P"] > input:checked,
li[data-task="P"] > p > input:checked,
li[data-task="M"] > input:checked,
li[data-task="M"] > p > input:checked,
li[data-task="S"] > input:checked,
li[data-task="S"] > p > input:checked,
li[data-task="D"] > input:checked,
li[data-task="D"] > p > input:checked {
  --checkbox-marker-color: transparent;
  border: none;
  border-radius: 0;
  background-image: none;
  background-color: currentColor;
  -webkit-mask-size: var(--checkbox-icon);
  -webkit-mask-position: 50% 50%;
}

input[data-task=">"]:checked,
li[data-task=">"] > input:checked,
li[data-task=">"] > p > input:checked {
  color: var(--text-faint);
  transform: rotate(90deg);
  -webkit-mask-position: 50% 100%;
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M10.894 2.553a1 1 0 00-1.788 0l-7 14a1 1 0 001.169 1.409l5-1.429A1 1 0 009 15.571V11a1 1 0 112 0v4.571a1 1 0 00.725.962l5 1.428a1 1 0 001.17-1.408l-7-14z' /%3E%3C/svg%3E");
}
input[data-task="<"]:checked,
li[data-task="<"] > input:checked,
li[data-task="<"] > p > input:checked {
  padding: 10px;
  color: var(--text-faint);
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z' clip-rule='evenodd' /%3E%3C/svg%3E");
}

input[data-task="t"]:checked,
li[data-task="t"] > input:checked,
li[data-task="t"] > p > input:checked {
  padding: 10px;
  color: var(--text-faint);
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z' clip-rule='evenodd' /%3E%3C/svg%3E");
}

input[data-task="/"]:checked,
li[data-task="/"] > input:checked,
li[data-task="/"] > p > input:checked {
  background-image: none;
  background-color: transparent;
  position: relative;
  overflow: hidden;
}
input[data-task="/"]:checked:after,
li[data-task="/"] > input:checked:after,
li[data-task="/"] > p > input:checked:after {
  top: 0;
  left: 0;
  content: " ";
  display: block;
  position: absolute;
  background-color: var(--text-faint);
  width: calc(50% - 0.5px);
  height: 100%;
  -webkit-mask-image: none;
}

input[data-task="-"]:checked,
li[data-task="-"] > input:checked,
li[data-task="-"] > p > input:checked {
  color: var(--text-faint);
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
body:not(.tasks)
  .markdown-preview-view
  ul
  li[data-task="-"].task-list-item.is-checked,
body:not(.tasks)
  .markdown-source-view.mod-cm6
  .HyperMD-task-line[data-task]:is([data-task="-"]),
body:not(.tasks) li[data-task="-"].task-list-item.is-checked {
  color: var(--text-faint);
  text-decoration: line-through solid var(--text-faint) 1px;
}

input[data-task="?"]:checked,
li[data-task="?"] > input:checked,
li[data-task="?"] > p > input:checked {
  background-color: var(--color-yellow);
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath d='M504 256c0 136.997-111.043 248-248 248S8 392.997 8 256C8 119.083 119.043 8 256 8s248 111.083 248 248zM262.655 90c-54.497 0-89.255 22.957-116.549 63.758-3.536 5.286-2.353 12.415 2.715 16.258l34.699 26.31c5.205 3.947 12.621 3.008 16.665-2.122 17.864-22.658 30.113-35.797 57.303-35.797 20.429 0 45.698 13.148 45.698 32.958 0 14.976-12.363 22.667-32.534 33.976C247.128 238.528 216 254.941 216 296v4c0 6.627 5.373 12 12 12h56c6.627 0 12-5.373 12-12v-1.333c0-28.462 83.186-29.647 83.186-106.667 0-58.002-60.165-102-116.531-102zM256 338c-25.365 0-46 20.635-46 46 0 25.364 20.635 46 46 46s46-20.636 46-46c0-25.365-20.635-46-46-46z'/%3E%3C/svg%3E");
}

input[data-task="!"]:checked,
li[data-task="!"] > input:checked,
li[data-task="!"] > p > input:checked {
  color: var(--color-orange);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task='"']:checked,
li[data-task='"'] > input:checked,
li[data-task='"'] > p > input:checked {
  border-color: var(--color-cyan);
  -webkit-mask-image: url('data:image/svg+xml,%3Csvg xmlns="http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg" width="20" height="20" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"%3E%3Cpath fill="black" fill-opacity="0.7" d="M6.5 10c-.223 0-.437.034-.65.065c.069-.232.14-.468.254-.68c.114-.308.292-.575.469-.844c.148-.291.409-.488.601-.737c.201-.242.475-.403.692-.604c.213-.21.492-.315.714-.463c.232-.133.434-.28.65-.35l.539-.222l.474-.197l-.485-1.938l-.597.144c-.191.048-.424.104-.689.171c-.271.05-.56.187-.882.312c-.318.142-.686.238-1.028.466c-.344.218-.741.4-1.091.692c-.339.301-.748.562-1.05.945c-.33.358-.656.734-.909 1.162c-.293.408-.492.856-.702 1.299c-.19.443-.343.896-.468 1.336c-.237.882-.343 1.72-.384 2.437c-.034.718-.014 1.315.028 1.747c.015.204.043.402.063.539l.025.168l.026-.006A4.5 4.5 0 1 0 6.5 10zm11 0c-.223 0-.437.034-.65.065c.069-.232.14-.468.254-.68c.114-.308.292-.575.469-.844c.148-.291.409-.488.601-.737c.201-.242.475-.403.692-.604c.213-.21.492-.315.714-.463c.232-.133.434-.28.65-.35l.539-.222l.474-.197l-.485-1.938l-.597.144c-.191.048-.424.104-.689.171c-.271.05-.56.187-.882.312c-.317.143-.686.238-1.028.467c-.344.218-.741.4-1.091.692c-.339.301-.748.562-1.05.944c-.33.358-.656.734-.909 1.162c-.293.408-.492.856-.702 1.299c-.19.443-.343.896-.468 1.336c-.237.882-.343 1.72-.384 2.437c-.034.718-.014 1.315.028 1.747c.015.204.043.402.063.539l.025.168l.026-.006A4.5 4.5 0 1 0 17.5 10z"%2F%3E%3C%2Fsvg%3E');
}

input[data-task="*"]:checked,
li[data-task="*"] > input:checked,
li[data-task="*"] > p > input:checked {
  color: var(--color-yellow);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z' /%3E%3C/svg%3E");
}
input[data-task="l"]:checked,
li[data-task="l"] > input:checked,
li[data-task="l"] > p > input:checked {
  color: var(--color-red);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z' clip-rule='evenodd' /%3E%3C/svg%3E");
}

input[data-task="i"]:checked,
li[data-task="i"] > input:checked,
li[data-task="i"] > p > input:checked {
  /* --checkbox-marker-color: transparent; */
  background-color: var(--color-blue);
  /* border-color: var(--color-blue);
  background-position: 50%;
  background-size: 100%; */
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3C!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --%3E%3Cpath d='M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256S114.6 512 256 512zM216 336h24V272H216c-13.3 0-24-10.7-24-24s10.7-24 24-24h48c13.3 0 24 10.7 24 24v88h8c13.3 0 24 10.7 24 24s-10.7 24-24 24H216c-13.3 0-24-10.7-24-24s10.7-24 24-24zm40-144c-17.7 0-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32s-14.3 32-32 32z'/%3E%3C/svg%3E");
}

input[data-task="S"]:checked,
li[data-task="S"] > input:checked,
li[data-task="S"] > p > input:checked {
  color: var(--color-green);
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3C!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --%3E%3Cpath d='M320 96H192L144.6 24.9C137.5 14.2 145.1 0 157.9 0H354.1c12.8 0 20.4 14.2 13.3 24.9L320 96zM192 128H320c3.8 2.5 8.1 5.3 13 8.4C389.7 172.7 512 250.9 512 416c0 53-43 96-96 96H96c-53 0-96-43-96-96C0 250.9 122.3 172.7 179 136.4l0 0 0 0c4.8-3.1 9.2-5.9 13-8.4zm84.1 96c0-11.1-9-20.1-20.1-20.1s-20.1 9-20.1 20.1v6c-5.6 1.2-10.9 2.9-15.9 5.1c-15 6.8-27.9 19.4-31.1 37.7c-1.8 10.2-.8 20 3.4 29c4.2 8.8 10.7 15 17.3 19.5c11.6 7.9 26.9 12.5 38.6 16l2.2 .7c13.9 4.2 23.4 7.4 29.3 11.7c2.5 1.8 3.4 3.2 3.8 4.1c.3 .8 .9 2.6 .2 6.7c-.6 3.5-2.5 6.4-8 8.8c-6.1 2.6-16 3.9-28.8 1.9c-6-1-16.7-4.6-26.2-7.9l0 0 0 0 0 0 0 0c-2.2-.8-4.3-1.5-6.3-2.1c-10.5-3.5-21.8 2.2-25.3 12.7s2.2 21.8 12.7 25.3c1.2 .4 2.7 .9 4.4 1.5c7.9 2.7 20.3 6.9 29.8 9.1V416c0 11.1 9 20.1 20.1 20.1s20.1-9 20.1-20.1v-5.5c5.4-1 10.5-2.5 15.4-4.6c15.7-6.7 28.4-19.7 31.6-38.7c1.8-10.4 1-20.3-3-29.4c-3.9-9-10.2-15.6-16.9-20.5c-12.2-8.8-28.3-13.7-40.4-17.4l-.8-.2c-14.2-4.3-23.8-7.3-29.9-11.4c-2.6-1.8-3.4-3-3.6-3.5c-.2-.3-.7-1.6-.1-5c.3-1.9 1.9-5.2 8.2-8.1c6.4-2.9 16.4-4.5 28.6-2.6c4.3 .7 17.9 3.3 21.7 4.3c10.7 2.8 21.6-3.5 24.5-14.2s-3.5-21.6-14.2-24.5c-4.4-1.2-14.4-3.2-21-4.4V224z'/%3E%3C/svg%3E");
}

input[data-task="I"]:checked,
li[data-task="I"] > input:checked,
li[data-task="I"] > p > input:checked {
  color: var(--color-yellow);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M11 3a1 1 0 10-2 0v1a1 1 0 102 0V3zM15.657 5.757a1 1 0 00-1.414-1.414l-.707.707a1 1 0 001.414 1.414l.707-.707zM18 10a1 1 0 01-1 1h-1a1 1 0 110-2h1a1 1 0 011 1zM5.05 6.464A1 1 0 106.464 5.05l-.707-.707a1 1 0 00-1.414 1.414l.707.707zM5 10a1 1 0 01-1 1H3a1 1 0 110-2h1a1 1 0 011 1zM8 16v-1h4v1a2 2 0 11-4 0zM12 14c.015-.34.208-.646.477-.859a4 4 0 10-4.954 0c.27.213.462.519.476.859h4.002z' /%3E%3C/svg%3E");
}
input[data-task="f"]:checked,
li[data-task="f"] > input:checked,
li[data-task="f"] > p > input:checked {
  color: var(--color-red);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M12.395 2.553a1 1 0 00-1.45-.385c-.345.23-.614.558-.822.88-.214.33-.403.713-.57 1.116-.334.804-.614 1.768-.84 2.734a31.365 31.365 0 00-.613 3.58 2.64 2.64 0 01-.945-1.067c-.328-.68-.398-1.534-.398-2.654A1 1 0 005.05 6.05 6.981 6.981 0 003 11a7 7 0 1011.95-4.95c-.592-.591-.98-.985-1.348-1.467-.363-.476-.724-1.063-1.207-2.03zM12.12 15.12A3 3 0 017 13s.879.5 2.5.5c0-1 .5-4 1.25-4.5.5 1 .786 1.293 1.371 1.879A2.99 2.99 0 0113 13a2.99 2.99 0 01-.879 2.121z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task="k"]:checked,
li[data-task="k"] > input:checked,
li[data-task="k"] > p > input:checked {
  color: var(--color-yellow);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M18 8a6 6 0 01-7.743 5.743L10 14l-1 1-1 1H6v2H2v-4l4.257-4.257A6 6 0 1118 8zm-6-4a1 1 0 100 2 2 2 0 012 2 1 1 0 102 0 4 4 0 00-4-4z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task="u"]:checked,
li[data-task="u"] > input:checked,
li[data-task="u"] > p > input:checked {
  color: var(--color-green);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M12 7a1 1 0 110-2h5a1 1 0 011 1v5a1 1 0 11-2 0V8.414l-4.293 4.293a1 1 0 01-1.414 0L8 10.414l-4.293 4.293a1 1 0 01-1.414-1.414l5-5a1 1 0 011.414 0L11 10.586 14.586 7H12z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task="d"]:checked,
li[data-task="d"] > input:checked,
li[data-task="d"] > p > input:checked {
  color: var(--color-red);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M12 13a1 1 0 100 2h5a1 1 0 001-1V9a1 1 0 10-2 0v2.586l-4.293-4.293a1 1 0 00-1.414 0L8 9.586 3.707 5.293a1 1 0 00-1.414 1.414l5 5a1 1 0 001.414 0L11 9.414 14.586 13H12z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task="w"]:checked,
li[data-task="w"] > input:checked,
li[data-task="w"] > p > input:checked {
  color: var(--color-purple);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath fill-rule='evenodd' d='M6 3a1 1 0 011-1h.01a1 1 0 010 2H7a1 1 0 01-1-1zm2 3a1 1 0 00-2 0v1a2 2 0 00-2 2v1a2 2 0 00-2 2v.683a3.7 3.7 0 011.055.485 1.704 1.704 0 001.89 0 3.704 3.704 0 014.11 0 1.704 1.704 0 001.89 0 3.704 3.704 0 014.11 0 1.704 1.704 0 001.89 0A3.7 3.7 0 0118 12.683V12a2 2 0 00-2-2V9a2 2 0 00-2-2V6a1 1 0 10-2 0v1h-1V6a1 1 0 10-2 0v1H8V6zm10 8.868a3.704 3.704 0 01-4.055-.036 1.704 1.704 0 00-1.89 0 3.704 3.704 0 01-4.11 0 1.704 1.704 0 00-1.89 0A3.704 3.704 0 012 14.868V17a1 1 0 001 1h14a1 1 0 001-1v-2.132zM9 3a1 1 0 011-1h.01a1 1 0 110 2H10a1 1 0 01-1-1zm3 0a1 1 0 011-1h.01a1 1 0 110 2H13a1 1 0 01-1-1z' clip-rule='evenodd' /%3E%3C/svg%3E");
}
input[data-task="p"]:checked,
li[data-task="p"] > input:checked,
li[data-task="p"] > p > input:checked {
  color: var(--color-green);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M2 10.5a1.5 1.5 0 113 0v6a1.5 1.5 0 01-3 0v-6zM6 10.333v5.43a2 2 0 001.106 1.79l.05.025A4 4 0 008.943 18h5.416a2 2 0 001.962-1.608l1.2-6A2 2 0 0015.56 8H12V4a2 2 0 00-2-2 1 1 0 00-1 1v.667a4 4 0 01-.8 2.4L6.8 7.933a4 4 0 00-.8 2.4z' /%3E%3C/svg%3E");
}
input[data-task="c"]:checked,
li[data-task="c"] > input:checked,
li[data-task="c"] > p > input:checked {
  color: var(--color-orange);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M18 9.5a1.5 1.5 0 11-3 0v-6a1.5 1.5 0 013 0v6zM14 9.667v-5.43a2 2 0 00-1.105-1.79l-.05-.025A4 4 0 0011.055 2H5.64a2 2 0 00-1.962 1.608l-1.2 6A2 2 0 004.44 12H8v4a2 2 0 002 2 1 1 0 001-1v-.667a4 4 0 01.8-2.4l1.4-1.866a4 4 0 00.8-2.4z' /%3E%3C/svg%3E");
}
input[data-task="b"]:checked,
li[data-task="b"] > input:checked,
li[data-task="b"] > p > input:checked {
  color: var(--color-orange);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' class='h-5 w-5' viewBox='0 0 20 20' fill='currentColor'%3E%3Cpath d='M5 4a2 2 0 012-2h6a2 2 0 012 2v14l-5-2.5L5 18V4z' /%3E%3C/svg%3E");
}
input[data-task="P"]:checked,
li[data-task="P"] > input:checked,
li[data-task="P"] > p > input:checked {
  color: var(--color-green);
  padding: 10px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3C!--! Font Awesome Free 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2022 Fonticons, Inc. --%3E%3Cpath d='M305.8 2.076C314.4 5.932 320 14.52 320 24V64H336C406.7 64 464 121.3 464 192V358.7C492.3 371 512 399.2 512 432C512 476.2 476.2 512 432 512C387.8 512 352 476.2 352 432C352 399.2 371.7 371 400 358.7V192C400 156.7 371.3 128 336 128H320V168C320 177.5 314.4 186.1 305.8 189.9C297.1 193.8 286.1 192.2 279.9 185.8L199.9 113.8C194.9 109.3 192 102.8 192 96C192 89.2 194.9 82.71 199.9 78.16L279.9 6.161C286.1-.1791 297.1-1.779 305.8 2.077V2.076zM432 456C445.3 456 456 445.3 456 432C456 418.7 445.3 408 432 408C418.7 408 408 418.7 408 432C408 445.3 418.7 456 432 456zM112 358.7C140.3 371 160 399.2 160 432C160 476.2 124.2 512 80 512C35.82 512 0 476.2 0 432C0 399.2 19.75 371 48 358.7V153.3C19.75 140.1 0 112.8 0 80C0 35.82 35.82 .0004 80 .0004C124.2 .0004 160 35.82 160 80C160 112.8 140.3 140.1 112 153.3V358.7zM80 56C66.75 56 56 66.75 56 80C56 93.25 66.75 104 80 104C93.25 104 104 93.25 104 80C104 66.75 93.25 56 80 56zM80 408C66.75 408 56 418.7 56 432C56 445.3 66.75 456 80 456C93.25 456 104 445.3 104 432C104 418.7 93.25 408 80 408z'/%3E%3C/svg%3E");
}
input[data-task="M"]:checked,
li[data-task="M"] > input:checked,
li[data-task="M"] > p > input:checked {
  padding: 13px;
  color: var(--color-purple);
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 256 256'%3E%3Crect width='256' height='256' fill='none'/%3E%3Ccircle cx='68' cy='68' r='28' opacity='0.2'/%3E%3Ccircle cx='68' cy='188' r='28' fill='none' stroke='%23000' stroke-linecap='round' stroke-linejoin='round' stroke-width='16'/%3E%3Ccircle cx='68' cy='68' r='28' fill='none' stroke='%23000' stroke-linecap='round' stroke-linejoin='round' stroke-width='16'/%3E%3Ccircle cx='188' cy='140' r='28' fill='none' stroke='%23000' stroke-linecap='round' stroke-linejoin='round' stroke-width='16'/%3E%3Cpath d='M160,144H130.5a47.8,47.8,0,0,1-36.9-17.3L68,96v64' fill='none' stroke='%23000' stroke-linecap='round' stroke-linejoin='round' stroke-width='16'/%3E%3C/svg%3E");
}
input[data-task="D"]:checked,
li[data-task="D"] > input:checked,
li[data-task="D"] > p > input:checked {
  color: var(--color-base-50);
  padding: 12px;
  -webkit-mask-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 16 16' xmlns='http://www.w3.org/2000/svg' version='1.1' fill='none' stroke='%23000000' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5'%3E%3Cg id='SVGRepo_bgCarrier' stroke-width='0'%3E%3C/g%3E%3Cg id='SVGRepo_tracerCarrier' stroke-linecap='round' stroke-linejoin='round'%3E%3C/g%3E%3Cg id='SVGRepo_iconCarrier'%3E%3Ccircle cy='12.5' cx='12.5' r='1.75'%3E%3C/circle%3E%3Ccircle cy='12.5' cx='3.5' r='1.75'%3E%3C/circle%3E%3Ccircle cy='3.5' cx='3.5' r='1.75'%3E%3C/circle%3E%3Cpath d='m7.75 2.75h.5m2.5 0h.5m1.5 2.5v-.5m0 3v.5m-9-2.5v4.5'%3E%3C/path%3E%3C/g%3E%3C/svg%3E");
}

body:not(.tasks) li[data-task=">"].task-list-item.is-checked,
body:not(.tasks) li[data-task="<"].task-list-item.is-checked,
body:not(.tasks) li[data-task="b"].task-list-item.is-checked,
body:not(.tasks) li[data-task="i"].task-list-item.is-checked,
body:not(.tasks) li[data-task="*"].task-list-item.is-checked,
body:not(.tasks) li[data-task="!"].task-list-item.is-checked,
body:not(.tasks) li[data-task="S"].task-list-item.is-checked,
body:not(.tasks) li[data-task="?"].task-list-item.is-checked,
body:not(.tasks) li[data-task="/"].task-list-item.is-checked,
body:not(.tasks) li[data-task='"'].task-list-item.is-checked,
body:not(.tasks) li[data-task="l"].task-list-item.is-checked,
body:not(.tasks) li[data-task="I"].task-list-item.is-checked,
body:not(.tasks) li[data-task="p"].task-list-item.is-checked,
body:not(.tasks) li[data-task="c"].task-list-item.is-checked,
body:not(.tasks) li[data-task="f"].task-list-item.is-checked,
body:not(.tasks) li[data-task="k"].task-list-item.is-checked,
body:not(.tasks) li[data-task="w"].task-list-item.is-checked,
body:not(.tasks) li[data-task="u"].task-list-item.is-checked,
body:not(.tasks) li[data-task="d"].task-list-item.is-checked,
body:not(.tasks) li[data-task="P"].task-list-item.is-checked,
body:not(.tasks) li[data-task="D"].task-list-item.is-checked {
  color: var(--text-normal);
}

/***************************************/
/*              popover                */
/***************************************/

.popover {
  border: 1px solid var(--border-color);
  background-color: var(--background-secondary);
}

/***************************************/
/*            Side panel               */
/***************************************/

/* search result in backlink or file search */
.search-result-file-title {
  font-size: 15px;
}

.search-result-file-matches,
.search-empty-state {
  font-size: var(--font-size-side-dock);
}

/*decrease the spacing between result items*/
.search-result-file-title,
.search-result-file-match {
  padding: 0px 10px;
}

.nav-file-title,
.nav-folder-title {
  border-bottom-left-radius: 0 !important;
  border-bottom-right-radius: 0 !important;
  border-top-left-radius: 0 !important;
  border-top-right-radius: 0 !important;
}

/*backlink pane*/
.workspace-leaf-content[data-type="backlink"] .view-content {
  background-color: var(--background-secondary);
}

.workspace-leaf-content[data-type="tag"] .tag-pane-tag-count,
.workspace-leaf-content[data-type="tag"] .tag-pane-tag-text {
  font-size: var(--font-size-side-dock);
}

.workspace-leaf-content[data-type="backlink"] .search-result-file-matches {
  font-size: var(--font-size-side-dock);
}

/***************************************/
/* internal embedded link in preview   */
/***************************************/

/* Naked Embeds */
.markdown-embed-title {
  display: none;
}

.markdown-preview-view .markdown-embed-content > :first-child {
  margin-top: 0;
}

.markdown-preview-view .markdown-embed-content > :last-child {
  margin-bottom: 0;
}

/*remove the following two line, you will get border and scroll*/
.markdown-preview-view .markdown-embed {
  border: none;
  padding: 0;
  margin: 0;
}

.markdown-preview-view .markdown-embed-content {
  max-height: unset;
  background-color: var(--background-secondary);
}

/* the link on the top right corner*/
.markdown-embed-link {
  color: var(--text-faint) !important;
}

.markdown-embed-link:hover {
  color: var(--text-accent) !important;
}

/***************************************/
/*             graph view              */
/***************************************/
.graph-view.color-circle,
.graph-view.color-fill-highlight,
.graph-view.color-line-highlight {
  color: var(--interactive-hover) !important;
}

.graph-view.color-text {
  color: var(--text-normal) !important;
}

.graph-view.color-line {
  /* color: #6272a4; */
  color: var(--interactive-accent);
}

.graph-view.color-fill {
  color: var(--text-muted);
}

.workspace-leaf-content[data-type="graph"] .view-content {
  background-color: var(--background-primary);
}

/***************************************/
/*            settings                 */
/***************************************/

.modal.mod-settings button:not(.mod-cta):hover {
  background-color: var(--interactive-accent-hover);
  color: var(--text-on-accent);
}

/***************************************/
/*           width of content          */
/***************************************/

.markdown-source-view.is-readable-line-width .CodeMirror {
  max-width: 900px;
  margin-left: auto;
  margin-right: auto;
}

.markdown-preview-view.is-readable-line-width .markdown-preview-section {
  max-width: 900px;
  margin-left: 30px;
  margin-right: 30px;
}

/* header */

.theme-dark .view-header {
  background-color: var(--background-primary) !important;
  border-top: 1px solid var(--border-color) !important;
  border-bottom: 3px solid var(--border-modified-color) !important;
}

.theme-dark .view-header-title-container:after {
  background: linear-gradient(
    to bottom,
    transparent,
    var(--background-primary)
  ) !important;
}

.theme-dark .workspace-leaf.mod-active .view-header {
  background-color: var(--background-secondary-alt) !important;
  border-top: 0px !important;
  border-bottom: 3px solid var(--interactive-accent) !important;
}

.workspace-leaf.mod-active .view-header-title-container:after {
  background: linear-gradient(
    to bottom,
    transparent,
    var(--background-secondary-alt)
  ) !important;
}

.workspace-leaf.mod-active .view-header-title,
.workspace-leaf.mod-active .view-header-icon {
  color: var(--background-modifier-border);
}

.view-header-title,
.view-header-icon,
.view-action {
  color: var(--text-faint);
}

.view-header-title {
  font-size: 20px;
}

/***************************************/
/*    at a rule line before ul list    */
/***************************************/

ul ul {
  position: relative;
}

ul ul::before {
  content: "";
  border-left: 1px solid var(--border-color);
  position: absolute;
}

ul ul::before {
  left: -1em;
  top: 0;
  bottom: 0;
}

/* rule line when there are checkboxes*/
ul .task-list-item ul::before {
  left: 0.15em !important;
}

/***************************************/
/*       Code block in Editor          */
/***************************************/

.cm-s-obsidian div.HyperMD-codeblock-bg {
  left: 0;
  right: 0;
  background-color: var(--pre-code);
}

/* in-line block for editor */

.cm-s-obsidian
  span.cm-inline-code:not(.cm-formatting):not(.cm-hmd-indented-code) {
  background-color: var(--pre-code-bg);
  color: var(--inline-code) !important;
  bottom: 0px !important;
}

.cm-s-obsidian span.cm-inline-code,
.cm-s-obsidian span.cm-inline-code.cm-hmd-indented-code {
  background-color: var(--pre-code-bg);
  color: var(--code-block) !important;
  bottom: 0px !important;
}

/* Editor CodeBlock TEXT Appearance */
.cm-s-obsidian pre.HyperMD-codeblock {
  font-family: monaco !important;
  font-size: var(--font-size-code) !important;
  padding: 1px !important;
  display: block;
  color: var(--code-block) !important;
  font-weight: 500;
  text-indent: 0px !important;
}

/*remove the border of codeblock in editor */
.HyperMD-codeblock-bg {
  border: 0px !important;
}

/* an active line highlight in vim normal mode */
.cm-fat-cursor .CodeMirror-activeline .CodeMirror-linebackground {
  background-color: var(--text-selection) !important;
}

/* in-line block for preview */
code {
  color: var(--inline-code) !important;
  bottom: 0px !important;
}

token.class-name,
.token.property-access {
  color: var(--code-function);
}

/* graph css  */
.theme-dark .graph-view.color-arrow {
  color: #50fa7b;
}

.theme-dark .graph-view.color-fill-tag {
  color: #ffb86c;
}

.theme-dark .graph-view.color-fill-attachment {
  color: #ff5555;
}

.theme-dark .graph-view.color-fill-unresolved {
  color: #6272a4;
}

.search-result-collapse-indicator {
  position: absolute;
  left: 0;
  top: -3px;
  color: var(--text-faint);
  transition: transform 100ms ease-in-out;
  padding: 0px !important;
}

/* @settings

name: Dracula Plus Theme
id: obsidian-default-theme
settings:
  - 
    id: heading-colors-background
    title: Background Colors
    type: heading
    level: 1
    collapsed: true
  -
    id: background-primary
    title: Background Primary
    description: Primary Color
    type: variable-themed-color
    opacity: true
    format: hex
    default-light: '#00000033'
    default-dark: '#ffffff33'
  -
    id: pre-code
    title: Code Block
    description: Code Block
    type: variable-themed-color
    opacity: true
    format: hex
    default-light: '#00000033'
    default-dark: '#ffffff33'
  -
    id: background-secondary
    title: Background Secondary
    description: Collaps Panel 
    type: variable-themed-color
    opacity: true
    format: hex
    default-light: '#00000033'
    default-dark: '#ffffff33'
  -
    id: background-secondary-alt
    title: Background Secondary (alt)
    description: Top Border
    type: variable-themed-color
    opacity: true
    format: hex
    default-light: '#00000033'
    default-dark: '#ffffff33'
  -
    id: background-modifier-border
    title: 'Background Modifier: Border'
    description: Border Modifer
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#00000033'
    default-dark: '#ffffff33'
  -
    id: background-modifier-form-field
    title: 'Background Modifier: Form Field'
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#00000033'
    default-dark: '#ffffff33'
  - 
    id: color-user-request
    title: 'File Tree'
    description: file naviagtion file title
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#00000033'
    default-dark: '#ffffff33'
  - 
    id: indentation-guide-color
    title: 'File Tree: Indentation'
    description: Indentation
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#00000033'
    default-dark: '#ffffff33'
  - 
    id: heading-colors-scrollbar
    title: Scrollbar Colors
    type: heading
    level: 1
    collapsed: true
  -
    id: scrollbar-thumb-bg
    title: 'Scrollbar: Thumb Background'
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#0000001a'
    default-dark: '#ffffff1a'
  -
    id: scrollbar-active-thumb-bg
    title: 'Scrollbar: Active Thumb Background'
    type: variable-themed-color
    opacity: true
    format: rgb
    default-light: '#00000033'
    default-dark: '#ffffff33'

*/
