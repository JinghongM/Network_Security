sudo apt-get update
sudo apt-get install mysql-server
git clone https://github.com/JinghongM/Network_Security.git
cd Network_Security
mysql -u root -p < ./database.sql

Check table:
use security_test;
select * from user_profile;

Install pip3:
sudo apt-get install python3-pip
sudo apt-get install libmysqlclient-dev
sudo pip3 install flask
sudo pip3 install flask_mysqldb
sudo pip3 install flask_wtf