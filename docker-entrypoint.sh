#!/bin/bash
set -e

#su - solr -c "/opt/solr/bin/solr start -m 2g"
#[ -d /var/solr/data/ ] && su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"
echo docker | sudo -S /usr/bin/mysqld_safe --basedir=/usr & sleep 5s
echo "database started"
echo docker | sudo -S su - solr -c "/opt/solr/bin/solr start -m 2g"
echo docker | sudo -S su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"

echo "solr started"

exec "$@"
	
