%   for(h in $handlers_bar_left) {
	<div>
%       run_handler $$h
        </div>
%   }

<article>
% run_handlers $handlers_body_head
% run_handler $handler_body_main
% run_handlers $handlers_body_foot
</article>
