#!/bin/bash
mkdir /var/www/
sudo mount -t efs -o tls,accesspoint=fsap-07c7ce980b54c30a8 fs-0b4a5823f88ad317f:/ /var/www/
yum install -y httpd 
systemctl start httpd
systemctl enable httpd
yum module reset php -y
yum module enable php:remi-7.4 -y
yum install -y php php-common php-mbstring php-opcache php-intl php-xml php-gd php-curl php-mysqlnd php-fpm php-json
systemctl start php-fpm
systemctl enable php-fpm
git clone https://github.com/oayanda/tooling.git
mkdir /var/www/html
cp -R /tooling/html/* /var/www/html/
cd /tooling
mysql -h oayanda-database.crgesjc7j1ui.us-east-1.rds.amazonaws.com -u admin -p toolingdb < tooling-db.sql
cd /var/www/html/
touch healthstatus
sed -i "s/$db = mysqli_connect('mysql.tooling.svc.cluster.local', 'admin', 'admin', 'tooling');/$db = mysqli_connect('oayanda-database.crgesjc7j1ui.us-east-1.rds.amazonaws.com', 'admin', '12345678', 'toolingdb');/g" functions.php
chcon -t httpd_sys_rw_content_t /var/www/html/ -R
systemctl restart httpd