
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/blog2

sudo cp /home/ubuntu/blogrepo/nginx/nginx.conf /etc/nginx/sites-available/blog2
sudo ln -s /etc/nginx/sites-available/blog2 /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
echo "Restarting nginx..."
sudo systemctl restart nginx

