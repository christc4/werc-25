<div><form action="" method="POST" enctype="multipart/form-data"><input type="search" name="searching_query" placeholder="Type color or hex"><br><input type="submit" value="Visualize"></form></div> 
% if (! ~ $"post_arg_searching_query '') { 
<div class='box' style="background-color: %($post_arg_searching_query%)"</div>
<p style="color:%($post_arg_searching_query%);-webkit-text-stroke: 0.45px black;"><b>This is %($post_arg_searching_query%)</b></p>
% } 

<style>
.box {
  height: 20px;
  width: 20px;
  margin-bottom: 30px;
  border: 1px solid black;
}
</style>
