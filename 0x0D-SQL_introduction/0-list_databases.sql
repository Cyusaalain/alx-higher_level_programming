#!/bin/bash
# Task: List all databases on MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# MySQL query to list databases
MYSQL_QUERY="/* List all databases */ SELECT schema_name FROM information_schema.schemata;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
