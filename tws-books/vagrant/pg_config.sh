apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-flask python-sqlalchemy
apt-get -qqy install python-pip
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install redis
pip install passlib
sudo pip install werkzeug==0.8.3
sudo pip install flask==0.9
sudo pip install Flask-Login==0.1.3
pip install itsdangerous
pip install flask-httpauth
su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
su vagrant -c 'createdb forum'
su vagrant -c 'psql forum -f /vagrant/forum/forum.sql'

vagrantTip="[35m[1mThe shared directory is located at /vagrant\nTo access your shared files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install