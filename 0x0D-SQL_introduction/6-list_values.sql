#!/bin/bash
# Task: List all rows of table first_table in a specified database on MySQL server

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

# MySQL query to list all rows from the specified table in the specified database
MYSQL_QUERY="/* List all rows from $TABLE_NAME in $DATABASE_NAME */ USE $DATABASE_NAME; SELECT * FROM $TABLE_NAME;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
