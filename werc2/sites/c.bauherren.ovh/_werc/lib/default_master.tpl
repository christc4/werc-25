<!DOCTYPE HTML><html><head><title>%($pageTitle%)</title><link rel="stylesheet" href="/_werc/pub/style.css" type="text/css" media="screen" title="default"><meta charset="UTF-8"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> </head><body><header><nav><div><a href=//bauherren.ovh>bauherren</a> | <a href=//bauherren.ovh/dump>dump</a> | <a href=//git.bauherren.ovh>git</a></div><div><a href=mailto:christos@bauherren.ovh>email</a></div></nav><h1><a href="/">%($"siteTitle%)</a> <a href=_f.txt><span id="headerSubTitle"><small>%($"siteSubTitle%)</small></span></a></h1></header>
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
</article><footer><div>thanks <a href=//risingthumb.xyz>Aaron</a>, <a href=//edolg.net>Edo</a>, <a href=//lukesmith.xyz>Luke</a>, <a href=http://uriel.cat-v.org>Uriel</a> and <a href=http://xahlee.info>Xah</a></div><div><a href=/src/werc/powered-by>Powered by…</a></div></footer></body></html>
