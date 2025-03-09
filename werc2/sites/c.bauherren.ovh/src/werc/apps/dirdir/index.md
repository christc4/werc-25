### dirdir

This is development for [risingthumb's](//github.com/RisingThumb/dirdir) build for default dirdir, [see here](http://werc.cat-v.org/apps/dirdir)


#### <a name=dirdir-file-rename>File Rename</a> - WIP


2025/02/21

`apps/dirdir/app.rc`

	if not if(~ 1 $#post_arg_dirdir_rename_file && ! ~ $#post_arg_dirdir_new_name 0 && ! ~ $post_arg_dirdir_new_name "" )
	    mv $dirdir_file `{dirname $dirdir_file}^'/'^$post_arg_dirdir_new_name^'.md'

`apps/dirdir/sidebar_controls.tpl`

	<form action="" method="POST" enctype="multipart/form-data">
	<input type="search" name="dirdir_rename_file" placeholder="Current page file name"/><br/>
	<input type="search" name="dirdir_new_name" placeholder="New file name"/><br/>
	<input type="submit" value="Rename file" /><hr />
	</form>

**Problems:**

If you try to rename any page OTHER than the current one, renaming of `index.md` happens, possible cause:

        lp=$local_path
        # werc.rc doesn't append /index when $local_path doesn't exist
        # maybe it should, but for now we can fix it up here.
        if(~ $lp */) 
            lp=$lp^'index'

Also, if a 'wiki' exists that to needs to be renamed `.md_werc`

Or, for `.meta` files in `goralog`

todo: `rm -r junk || echo rm failed! get failure message`

get uploaf file choose file how to style wth css so works with darktheme todo


gget raw preview

2025/02/26

<img src=/pix/site-formatting-reference.png style="width:400px">

<img src=/pix/site-formatting-reference2.png style="width:400px">


the raw file preview


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


this is catn, todo: put on github or somewhere safe

    #!/bin/rc

    switch($#*) {
    case 0
        awk '{printf("<span>%d</span>\t%s\n",NR,$0)}'
    case 1 
        awk '{printf("<span>%d</span>\t%s\n",NR,$0)}' < $1
    case *
        echo 'usage: catn file' >[1=2]
        echo '       catn < file' >[1=2]
        echo '       cat file | catn' >[1=2]
    }






