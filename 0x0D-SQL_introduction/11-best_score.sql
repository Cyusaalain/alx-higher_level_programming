#!/bin/bash
# Task: List records with score >= 10 from table second_table in a specified database on MySQL server

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

# MySQL query to list records with score >= 10 from the second_table in the specified database
LIST_RECORDS_QUERY="/* List records with score >= 10 from second_table in $DATABASE_NAME */ USE $DATABASE_NAME; SELECT score, name FROM second_table WHERE score >= 10 ORDER BY score DESC;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$LIST_RECORDS_QUERY"
