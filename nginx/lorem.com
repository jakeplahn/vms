server {
  listen 80;
  listen [::]:80;

  root /home/vagrant/repos/lorem.com/html;
  index index.html;

  server_name lorem.com;

  location / {
    try_files $uri $uri/ =404;
  }
  location ~ \.php$ {
    fastcgi_pass unix:/var/run/php/php7.3-fpm.sock;
    fastcgi_index  index.php;
    fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
    include        fastcgi_params;
  }
}
