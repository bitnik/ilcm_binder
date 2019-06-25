#!/bin/bash
set -e

#su - solr -c "/opt/solr/bin/solr start -m 2g"
#[ -d /var/solr/data/ ] && su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"
#echo christian | sudo -S /usr/bin/mysqld_safe --basedir=/usr & sleep 5s
sh /home/christian/expectfile.sh
echo "database started"
#echo christian | sudo -S su - solr -c "/opt/solr/bin/solr start -m 2g"
#echo christian | sudo -S su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"

echo "solr started"
#su christian
#/usr/bin/supervisord

exec "$@"
	
