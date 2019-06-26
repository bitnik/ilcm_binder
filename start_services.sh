#!/bin/bash

echo ilcm | sudo -S -u solr /opt/solr/bin/solr start -m 2g

echo ilcm | sudo -S -u solr /opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM

echo ilcm | sudo -S service mysql start
