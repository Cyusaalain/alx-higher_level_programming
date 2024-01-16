#!/bin/bash
# Task: List the number of records with the same score in table second_table of a specified database on MySQL server

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

# MySQL query to list the number of records with the same score in the second_table
LIST_SCORE_COUNT_QUERY="/* List number of records with the same score in second_table of $DATABASE_NAME */ USE $DATABASE_NAME; SELECT score, COUNT(*) AS number FROM second_table GROUP BY score ORDER BY number DESC, score;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$LIST_SCORE_COUNT_QUERY"
