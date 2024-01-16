#!/bin/bash
# Task: Display the max temperature of each state ordered by state name

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

# MySQL query to display the max temperature of each state ordered by state name
DISPLAY_MAX_TEMP_BY_STATE_QUERY="/* Display max temperature of each state ordered by state name */ USE $DATABASE_NAME; SELECT state, MAX(temperature) AS max_temperature FROM weather GROUP BY state ORDER BY state;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$DISPLAY_MAX_TEMP_BY_STATE_QUERY"
