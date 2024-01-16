#!/bin/bash
# Task: Insert a new row into table first_table in a specified database on MySQL server

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

# New row values
NEW_ID=89
NEW_NAME="Best School"

# MySQL query to insert a new row into the specified table in the specified database
MYSQL_QUERY="/* Insert new row into $TABLE_NAME in $DATABASE_NAME */ USE $DATABASE_NAME; INSERT INTO $TABLE_NAME (id, name) VALUES ($NEW_ID, '$NEW_NAME');"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
