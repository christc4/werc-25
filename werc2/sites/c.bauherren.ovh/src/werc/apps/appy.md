# werc

This is a trail of rope for me and documentation for others

## apps

Apps I regularly use are: [bridge](http://werc.cat-v.org/apps/bridge), [dirdir](//github.com/RisingThumb/dirdir), [goralog](//github.com/RisingThumb/goralog) and `searching`


### searching

2025/02/22

This is an app I made because of my dissatisfaction with the app '[duckduckgo](http://werc.cat-v.org/apps/duckduckgo)'

`apps/searching/app.rc`

	fn conf_enable_search {
	    enable_search=yes
	    conf_enable_app searching
		ll_add handlers_bar_left tpl_handler apps/searching/sbar.tpl
	}

`apps/searching/sbar.tpl`

	<div>
	    <form action="" method="POST" enctype="multipart/form-data">
		<input type="search" name="searching_query" placeholder="Search..."><br>
		<input type="submit" name="searching_preview" value="Search"><hr>
	    </form>
	</div>
	% if (! ~ $"post_arg_searching_preview '') {
	% tank $post_arg_searching_query
	% }


### pinify

25/02/24

go to [/guide/lang/cn](cn)

### bunnies

go to [glenda](glenda)

2025/02/22

<hr>
