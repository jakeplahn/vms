server {
  listen 80;
  listen [::]:80;

  root /home/vagrant/repos/lorem.com/html;
  index index.html;

  server_name lorem.com;

  location / {
    try_files $uri $uri/ =404;
  }
}
