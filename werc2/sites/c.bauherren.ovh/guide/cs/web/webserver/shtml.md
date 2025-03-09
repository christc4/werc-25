# Enable SSI to handle .shtml

### For nginx

What to put in your .conf

<object data=".txt/nginx_shtml_conf.txt" width="450px" height="220px"></object>

How you would handle reused bits of a .shtml site

`<#include file="/headers">`

.shtml has been largely superseded by other mechanisms, this site used to have it

You may need to enable .shtml extensions in your .htaccess file

	AddType text/html .shtml
	AddHandler server-parsed .shtml
