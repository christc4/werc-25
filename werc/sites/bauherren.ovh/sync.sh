#!/bin/sh

rsync -arv --exclude='.git/' --exclude='sync.sh' . root@bauherren.ovh:/var/www/bauherren/

