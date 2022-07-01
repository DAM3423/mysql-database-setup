#!/bin/bash

# CREATE MYSQL DATABASE

echo "We need to set up a Database for you."
read mysql_database

echo "We now need to set up a MYSQL user for you."
read mysql_user

echo "Great! Finally, We need a password for this very lucky user."
read mysql_password

sudo mysql <<EOF
CREATE DATABASE IF NOT EXISTS ${mysql_database};
CREATE USER '${mysql_user}'@'%' IDENTIFIED WITH mysql_native_password BY '${mysql_password}';
GRANT ALL ON ${mysql_database}.* TO '${mysql_user}'@'%';
EOF