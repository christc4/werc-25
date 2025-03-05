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

<a class="button" href="#popup1">Formatting reference</a>

<div id="popup1" class="overlay">
<div class="popup">
<h2>Formatting reference</h2>
<a class="close" href="#">&times;</a>
<div class="content">
<h3>Headers</h3>
<p>Prefix '#' to each line
<pre># Header one</pre>
<pre>## Header two</pre>
<pre>### Header three</pre>
<h3>Links</h3>
<p>For direct links, enclose the url in angle brackets
<pre>&lt;https://example.com&gt;</pre> 
<p>becomes <a href=https://example.com>https://example.com</a>
<p>To name links, enclose the name in square brackets, and the link in round brackets
<pre>[example](https://example.com)</pre>
<p>becomes <a href=https://example.com>example.com</a>
<h3>Lists</h3>
<p>For unordered lists, prefix '-' to each line
<pre>
- Coats
- Gloves
- Scarves
</pre>
<p>beccomes
<ul>
<li>Coats
<li>Gloves
<li>Scarves
</ul>
<p>For ordered lists, prefix a number to each line
<pre>
1. Red
2. Blue
3. Green
</pre>
<p>becomes
<ol>
<li>Red
<li>Blue
<li>Greeen
</ol>
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
