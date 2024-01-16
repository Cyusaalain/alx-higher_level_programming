#!/bin/bash
# Task: Display the average temperature (Fahrenheit) by city ordered by temperature (descending)

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

# MySQL query to display the average temperature (Fahrenheit) by city ordered by temperature (descending)
DISPLAY_AVERAGE_TEMP_QUERY="/* Display average temperature (Fahrenheit) by city ordered by temperature (descending) */ USE $DATABASE_NAME; SELECT city, AVG(temperature * 9/5 + 32) AS avg_temperature_fahrenheit FROM weather GROUP BY city ORDER BY avg_temperature_fahrenheit DESC;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$DISPLAY_AVERAGE_TEMP_QUERY"
