<div>
    <form action="" method="POST" enctype="multipart/form-data">
        <input type="search" name="debug_query" placeholder="Search..."><br>
        <input type="submit" name="debug_preview" value="Search"><hr>
    </form>
</div>

% if (! ~ $"post_arg_debug_preview '') {
<p>Now I'm going to UPPERCASE: <b>"%($post_arg_debug_query%)"</b><br>
% echo "$post_arg_debug_query" | tr2 '[:lower:]' '[:upper:]'
<br><br>
<p>Now I'm going to REVERSE: <b>"%($post_arg_debug_query%)"</b><br>
% echo "$post_arg_debug_query" | rev 
% }

