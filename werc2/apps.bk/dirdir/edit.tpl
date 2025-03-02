<div>
    <h1>Editing: <a href="%($req_path%)">%($req_path%)</a></h1>
    <br>
    <form action="" method="POST" enctype="multipart/form-data">
        <textarea name="edit_text" id="edit_text" cols="80" rows="43">%{
# FIXME Extra trailing new lines get added to the content somehow, should avoid it.
            echo $dirdir_search
            if(~ $#post_arg_edit_text 0 && test -f $dirdir_file)
                cat $dirdir_file | escape_html
            if not
                echo -n $post_arg_edit_text | escape_html

        %}</textarea>
        <br>
        <input type="submit" name="dirdir_save" value="Save">
        <input type="submit" name="dirdir_preview" value="Preview">
<div class="box">
	<a class="button" href="#popup1">Let me Pop up</a>
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Here i am</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			Thank to pop me out of that button, but now i'm done so you can close this window.
		</div>
	</div>
</div>

    </form>
</div>

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
