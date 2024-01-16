#!/bin/bash
# Task: Create table second_table and add records in the database hbtn_0c_0 on MySQL server

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

# MySQL query to create table if not exists
CREATE_TABLE_QUERY="/* Create table second_table if not exists */ USE $DATABASE_NAME; CREATE TABLE IF NOT EXISTS second_table (id INT, name VARCHAR(256), score INT);"

# MySQL query to add records to the second_table
INSERT_RECORDS_QUERY="/* Add records to second_table */ USE $DATABASE_NAME; INSERT INTO second_table (id, name, score) VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);"

# Execute MySQL queries
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$CREATE_TABLE_QUERY"
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$INSERT_RECORDS_QUERY"
