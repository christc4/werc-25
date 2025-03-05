<div><form action="" method="POST" enctype="multipart/form-data"><input type="search" name="searching_query" placeholder="Type 中文…"><br><input type="submit" value="Get pinyin"></form></div> 
% if (! ~ $"post_arg_searching_query '') { 
<small>
% echo $post_arg_searching_query | pinyin-tool
</small>
% } 
<p>Translate:
<div><form action="" method="POST" enctype="multipart/form-data"><input type="search" name="searching_query1" placeholder="中文 to EN"><br><input type="submit" value="Translate"></form></div> 
% if (! ~ $"post_arg_searching_query1 '') { 
<p class="tr">
% trans :en "$post_arg_searching_query1" | awk '{gsub(/\x1b\[[0-9;]*m/,"")}1'
% } 

<div><form action="" method="POST" enctype="multipart/form-data"><input type="search" name="searching_query2" placeholder="EN to 中文"><br><input type="submit" value="Translate"></form></div> 
% if (! ~ $"post_arg_searching_query2 '') { 
<pre style="font-family: sans-serif;">
% trans -no-ansi :zh "$post_arg_searching_query2" 
</pre>
% } 
<br>

