#!/bin/bash
# Task: List all records of table second_table in a specified database on MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# Check if the required arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Extract the database name from the command line argument
DATABASE_NAME="$1"

# MySQL query to list all records from the second_table in the specified database
LIST_RECORDS_QUERY="/* List records from second_table in $DATABASE_NAME */ USE $DATABASE_NAME; SELECT score, name FROM second_table ORDER BY score DESC;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$LIST_RECORDS_QUERY"
