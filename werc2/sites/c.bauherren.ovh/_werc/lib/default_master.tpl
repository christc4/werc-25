<!DOCTYPE HTML><html><head><title>%($pageTitle%)</title>
<link rel="stylesheet" href="/_werc/pub/extra.css" type="text/css" media="screen" title="default"><link rel="stylesheet" href="/_werc/pub/popup.css" type="text/css" media="screen" title="default"><link rel="stylesheet" href="/_werc/pub/style.css" type="text/css" media="screen" title="default"><link rel="shortcut icon" href="/pub/pix/glenda2.gif" type="image/vnd.microsoft.icon"><meta charset="UTF-8"></head><body><header><nav><div><a href=../>⬆ </a> | <a href=/>home</a> | <a href=//bauherren.ovh>bauherren</a> | <a href=//bauherren.ovh/dump>dump</a>| <a href=//github.com/christc4>github</a></div><div><a href=mailto:christos@bauherren.ovh>email</a> | <a href=/pub/src/me>updates</a></div></nav><h1>%($"siteTitle%)<span id="headerSubTitle"><small>%($"siteSubTitle%)</small></span></h1></header>
% if(! ~ $#handlers_bar_left 0) {
<nav id="side-bar">
%   for(h in $handlers_bar_left) {
<div>
%       run_handler $$h
</div>
%   }
</nav>
% }
<article>
% run_handlers $handlers_body_head
% run_handler $handler_body_main
% run_handlers $handlers_body_foot
</article><footer><div>thanks <a href=//risingthumb.xyz>Aaron</a>, <a href=//edolg.net>Edo</a>, <a href=//lukesmith.xyz>Luke</a>, <a href=http://uriel.cat-v.org>Uriel</a> and <a href=http://xahlee.info>Xah</a></div><div><a href=/pub/src/werc/powered-by>Powered by…</a></div></footer></body></html>
