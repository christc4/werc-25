<div>
    <form action="" method="POST" enctype="multipart/form-data">
        <input type="search" name="searching_query" placeholder="Search..."><br>
        <input type="submit" name="searching_preview" value="Search"><hr>
    </form>
</div>

% if (! ~ $"post_arg_searching_preview '') {
    <p>Received input: "%($post_arg_searching_query%)"
% }

