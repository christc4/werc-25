<form action="" method="POST" enctype="multipart/form-data"><input type="submit" name="dark" value="☀️"></form>
% if (! ~ $"post_arg_dark '') {
% dark-theme -d
% }

<form action="" method="POST" enctype="multipart/form-data"><input type="submit" name="light" value="🌘"></form>
% if (! ~ $"post_arg_light '') {
% dark-theme -l
% }

