#!/bin/bash
# Task: Display the top 3 cities' temperatures during July and August ordered by temperature (descending)

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

# MySQL query to display the top 3 cities' temperatures during July and August ordered by temperature (descending)
DISPLAY_TOP_3_TEMP_QUERY="/* Display top 3 cities' temperatures during July and August ordered by temperature (descending) */ USE $DATABASE_NAME; SELECT city, MAX(temperature) AS max_temperature FROM weather WHERE MONTH(date) IN (7, 8) GROUP BY city ORDER BY max_temperature DESC LIMIT 3;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$DISPLAY_TOP_3_TEMP_QUERY"
