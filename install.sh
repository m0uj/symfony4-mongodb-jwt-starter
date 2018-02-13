echo "Welcome to symfony4-mongodb-jwt-starter installer for ubuntu 16.04"

echo -e "\n---- Configure locale ----"
sudo locale-gen
sudo sh -c "echo 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' > /etc/default/locale"
sudo sh -c 'echo "LC_ALL=en_US.UTF-8" > /etc/environment'

echo -e "\n---- Update Server ----"
sudo apt-get update
sudo apt-get upgrade -y

echo -e "\n---- Install git and vim ----"
sudo apt-get install git vim -y

echo -e "\n---- Install PHP 7.2 and composer ----"
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.2
sudo apt-get install -y curl php-cli php-mbstring git unzip
sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo -e "\n---- Install PECL and PEAR ----"
sudo apt-get install -y php-pear

echo -e "\n---- Install NodeJs and its package manager ----"
sudo apt-get install npm -y

echo -e "\n---- Call node runs nodejs ----"
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo -e "\n---- Install less compiler ----"
sudo npm install -g less less-plugin-clean-css

echo -e "\n---- Install MongoDB as a service ----"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start

echo -e "\n---- Install mongodb.so extension ----"
sudo apt-get install -y php-mongodb

echo -e "\n---- Install Project's composer dependencies ----"
cd /home/ubuntu/symfony4-mongodb-jwt-starter
sudo composer install

echo -e "\n---- End of installation ----"