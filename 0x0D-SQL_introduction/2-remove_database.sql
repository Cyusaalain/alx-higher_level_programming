#!/bin/bash
# Task: Delete the database hbtn_0c_0 on MySQL server if it exists

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# MySQL query to delete database if it exists
MYSQL_QUERY="/* Delete database hbtn_0c_0 if it exists */ DROP DATABASE IF EXISTS hbtn_0c_0;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
