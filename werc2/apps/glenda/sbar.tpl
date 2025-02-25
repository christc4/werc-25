<div> 
    <form action="" method="POST" enctype="multipart/form-data"> 
        <input type="search" name="searching_query" placeholder="Input..."><br> 
        <input type="submit" value="Bunnify"><hr> 
    </form> 
</div> 
% if (! ~ $"post_arg_searching_query '') { 
<small><pre> 
% bunsay $post_arg_searching_query 
</pre></small> 
% } 

