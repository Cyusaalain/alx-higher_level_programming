#!/bin/bash
# Task: Create table first_table in the current database on MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# Check if the database name is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Extract the database name from the command line argument
DATABASE_NAME="$1"

# MySQL query to create table if not exists
MYSQL_QUERY="/* Create table first_table if not exists */ USE $DATABASE_NAME; CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
