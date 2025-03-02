To enable comments in a directory called `updates/`

    mkdir -p updates/_werc/comments && cd updates
    chmod 777 _werc/comments
    echo 'conf_enable_comments' > _werc/config
    touch index.md && chmod 777 index.md

If you want site-wide comments simply run the commands in `$site/_werc`

Lastly ensure everything is owned by your webserver's user, in my case `apache2`

    chown -R www-data:www-data updates/
