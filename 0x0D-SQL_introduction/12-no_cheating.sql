#!/bin/bash
# Task: Update the score of Bob to 10 in table second_table of a specified database on MySQL server

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

# MySQL query to update the score of Bob to 10 in the second_table of the specified database
UPDATE_SCORE_QUERY="/* Update score of Bob to 10 in second_table of $DATABASE_NAME */ USE $DATABASE_NAME; UPDATE second_table SET score = 10 WHERE name = 'Bob';"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$UPDATE_SCORE_QUERY"
