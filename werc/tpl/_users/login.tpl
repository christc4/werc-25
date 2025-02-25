<h1>User login</h1>
<br>
% if(check_user) {
    You are logged in as: <b>%($logged_user%)</b>
<h3>Server info.</h3>
<p>Server has been up for

%  uptime | awk -F'( |,|:)+' '{print $6,$7",",$8,"hours,",$9,"minutes"}'

<p><b>Storage:</b>
<pre>
% df -h /dev/vda2
</pre>
<pre>
% mail-info
</pre>
<p><b>Memory usage:</b>
<pre>
% free -h
</pre>
<p>See, <a href=/src/werc/guide>admin guide</a> for help
<p>If Christos is unavailable, contact <a href=//vultr.com/company/contact/>Vultr</a> regarding hosting and <a href=//ovhcloud.com/en-gb/contact/>OVHcloud</a> regarding the domain
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
