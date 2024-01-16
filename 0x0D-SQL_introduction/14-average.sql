#!/bin/bash
# Task: Compute the average score of all records in table second_table of a specified database on MySQL server

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

# MySQL query to compute the average score from the second_table in the specified database
COMPUTE_AVERAGE_QUERY="/* Compute average score from second_table in $DATABASE_NAME */ USE $DATABASE_NAME; SELECT AVG(score) AS average FROM second_table;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$COMPUTE_AVERAGE_QUERY"
