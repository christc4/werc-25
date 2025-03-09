<div>
    <h1>Editing: <a href="%($req_path%)">%($req_path%)</a></h1>
    <br>
    <form action="" method="POST" enctype="multipart/form-data">
        <textarea name="edit_text" id="edit_text" cols="80" rows="43">%{
# FIXME Extra trailing new lines get added to the content somehow, should avoid it.
            echo -n $dirdir_search
            if(~ $#post_arg_edit_text 0 && test -f $dirdir_file)
                cat $dirdir_file | escape_html
            if not
                echo -n $post_arg_edit_text | escape_html

        %}</textarea>
        <br>
        <input type="submit" name="dirdir_save" value="Save">
        <input type="submit" name="dirdir_preview" value="Preview">

% if(! ~ $"post_arg_dirdir_preview '') {
<br>
<details><summary>Raw File</summary>
<pre>
%               echo $post_arg_edit_text | escape_html | catn2
</pre></details>
<p><b>Preview:</b>
            <div id="preview">
%               echo $post_arg_edit_text | dos2unix | $formatter
            </div>
% }
