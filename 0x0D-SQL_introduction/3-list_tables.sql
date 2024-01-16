#!/bin/bash
# Task: List all tables of a specified database on MySQL server

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

# MySQL query to list tables in the specified database
MYSQL_QUERY="/* List tables in $DATABASE_NAME */ USE $DATABASE_NAME; SHOW TABLES;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
