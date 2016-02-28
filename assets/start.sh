
echo "Fixing cgi zoneminer Apache...."
for FILECGI in $(ls -1 /usr/lib/zoneminder/cgi-bin/); do
	ln -s /usr/lib/zoneminder/cgi-bin/$FILECGI /usr/lib/cgi-bin/$FILECGI
done

echo "Generating Folders...."
if [ ! -d /var/cache/zoneminder/backups ]; then
	mkdir /var/cache/zoneminder/backups
fi
if [ ! -d /var/cache/zoneminder/events ]; then
        mkdir /var/cache/zoneminder/events
fi
if [ ! -d /var/cache/zoneminder/images ]; then
        mkdir /var/cache/zoneminder/images
fi
if [ ! -d /var/cache/zoneminder/temp ]; then
        mkdir /var/cache/zoneminder/temp
fi
chown www-data:www-data /var/cache/zoneminder/backups /var/cache/zoneminder/events /var/cache/zoneminder/images /var/cache/zoneminder/temp

echo "Starting Cron System ...."
service cron start

echo "Starting Mysql...."
service mysql start

echo "Starting Apache...."
service apache2 start

echo "Starting Zoneminder...."
service zoneminder start

while true
do
	sleep 1
done

