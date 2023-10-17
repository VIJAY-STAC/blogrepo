#!/usr/bin/bash 

pwd
echo "hello1 "
source /home/ubuntu/env/bin/activate
echo "hello2 "
pwd

cd /home/ubuntu/blogrepo

sed -i 's/\[]/\["13.232.225.109"]/'  /blog/settings.py

python3 manage.py migrate 
python3 manage.py makemigrations     
python3 manage.py collectstatic
sudo service gunicorn restart
sudo service nginx restart
#sudo tail -f /var/log/nginx/error.log
#sudo systemctl reload nginx
#sudo tail -f /var/log/nginx/error.log
#sudo nginx -t
#sudo systemctl restart gunicorn
#sudo systemctl status gunicorn
#sudo systemctl status nginx
# Check the status
#systemctl status gunicorn
# Restart:
#systemctl restart gunicorn
#sudo systemctl status nginx
