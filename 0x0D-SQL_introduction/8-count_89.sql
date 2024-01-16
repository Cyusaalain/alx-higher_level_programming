#!/bin/bash
# Task: Display the number of records with id = 89 in table first_table of a specified database on MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <database_name> <table_name>"
    exit 1
fi

# Extract database and table names from the command line arguments
DATABASE_NAME="$1"
TABLE_NAME="$2"

# Value to check for
ID_TO_CHECK=89

# MySQL query to count records with id = 89 in the specified table in the specified database
MYSQL_QUERY="/* Count records with id = 89 in $TABLE_NAME of $DATABASE_NAME */ USE $DATABASE_NAME; SELECT COUNT(*) FROM $TABLE_NAME WHERE id = $ID_TO_CHECK;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"

