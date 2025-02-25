<header><h1><a href="/">%($"siteTitle%) <span id="headerSubTitle">%($"siteSubTitle%)</span></a></h1></header>

    <nav id="side-bar">
%   for(h in $handlers_bar_left) {
        <div>
%       run_handler $$h
        </div>
%   }
    </nav>

<article>
<center><p><small>Contact us via:  <a href=mailto:secretariat@gaipcht.org>secretariat@gaipcht.org</a></small><hr></center>
% run_handlers $handlers_body_head
% run_handler $handler_body_main
% run_handlers $handlers_body_foot
</article>

