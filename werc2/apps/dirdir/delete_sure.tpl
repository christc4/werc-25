<form action="" method="POST" enctype="multipart/form-data">

% if(~ 1 $#post_arg_dirdir_delete ) {
%   echo '<input type="hidden" name="dirdir_delete" value="Delete page" />' }
% if(~ 1 $#post_arg_dirdir_delete_file ) {
%   echo '<input type="hidden" name="dirdir_delete_file_name" value="'^$post_arg_dirdir_delete_file_name^'" />'
%   echo '<input type="hidden" name="dirdir_delete_file" value="Delete page" />' }
% if(~ 1 $#post_arg_dirdir_delete_folder ) {
%   echo '<input type="hidden" name="dirdir_delete_folder" value="Delete folder" />' }

<h1 style="font-size:2em"> Warning! File will be deleted</h1>
<img src=/pix/gif/blinking-warning.gif><br>
<input type="submit" name="dirdir_delete_yes" value="Confirm" />
</form>
