% if (! ~ $"post_arg_dark '') {
% dark-theme -d
% }

% if (! ~ $"post_arg_light '') {
% dark-theme -l
% }
<div style="display: flex;"><form action="" method="POST" enctype="multipart/form-data"><input type="submit" name="dark" value="☀️"></form><form action="" method="POST" enctype="multipart/form-data"><input type="submit" name="light" value="🌘"></form></div>
