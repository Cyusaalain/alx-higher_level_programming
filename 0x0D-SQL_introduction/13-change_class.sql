#!/bin/bash
# Task: Remove records with score <= 5 from table second_table in a specified database on MySQL server

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

# MySQL query to remove records with score <= 5 from the second_table in the specified database
REMOVE_RECORDS_QUERY="/* Remove records with score <= 5 from second_table in $DATABASE_NAME */ USE $DATABASE_NAME; DELETE FROM second_table WHERE score <= 5;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$REMOVE_RECORDS_QUERY"
