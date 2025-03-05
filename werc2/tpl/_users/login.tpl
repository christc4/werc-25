<h1>User login</h1>
% if(check_user) {
<p>You are logged in as: <b>%($logged_user%)</b><h3>Server info.</h3><p>Server has been up for
%  uptime | awk -F'( |,|:)+' '{print $6,$7",",$8,"hours,",$9,"minutes"}'
<p><b>Storage:</b><pre>% df -h /dev/vda2</pre><pre>
% du2 -sh --time  /var/www/werc2/sites/c.bauherren.ovh 
% du2 -sh --time  /var/www/werc/sites/bauherr.ovh 
% du2 -sh --time /var/www/werc/sites/b.bauherren.ovh 
% du2 -sh --time  /var/www/werc/sites/akinzon.org 
</pre><p><b>Memory usage:</b><pre>
% free -h
</pre><p>See, <a href=/src/werc/guide>admin guide</a> for help
<p>If Christos is unavailable, contact
<ul>
<li><a href=>Arif</a>: London friend (knows my address)
<li><a href=http://gyenes.xyz>Bela</a>: Hungarian friend
<li><a href=//vultr.com/company/contact/>Vultr</a> regarding hosting
<li><a href=//ovhcloud.com/en-gb/contact/>OVHcloud</a> domain name
<li><a href=//risingthumb.xyz>risingthumb</a>: super-specific werc question
</ul>
<p><a href=https://github.com/christc4/werc-25>site backup</a>
<br>
% }
% if not {
%    if (~ $REQUEST_METHOD POST)
%        echo '<div class="notify_errors">Login failed!</div>'
<form method="POST" action="" style="text-align: right; float: left;">
<fieldset>
    <label>User name: <input type="text" name="user_name" value="%($"post_arg_user_name%)"/></label><br>
    <label>User password: <input type="password" name="user_password"></label><br>
    <input name="s" type="submit" value="Login">
</fieldset>
</form>
% }
