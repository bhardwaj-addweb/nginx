#!/bin/bash
echo wordpress or drupal8
read name
echo site name is $name
site_name=$name.com
cp  /home/addweb/test/conf.d/.nginx.conf /home/addweb/test/conf.d/$name.conf
sed -i s/default_server/$site_name/g /home/addweb/test/conf.d/$name.conf
docker restart test_nginx_1