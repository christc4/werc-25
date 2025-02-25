<div><form action="" method="POST" enctype="multipart/form-data"><input type="search" name="searching_query" placeholder="Type 中文…"><br><input type="submit" value="Get pinyin"></form></div> 
% if (! ~ $"post_arg_searching_query '') { 
<small>
% echo $post_arg_searching_query | pinyin-tool
</small>
% } 

