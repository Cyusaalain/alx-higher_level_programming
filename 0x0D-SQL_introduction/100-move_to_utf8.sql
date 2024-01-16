#!/bin/bash
# Task: Convert hbtn_0c_0 database, first_table table, and name field to UTF8 in MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# MySQL query to convert the specified database, table, and field to UTF8
CONVERT_TO_UTF8_QUERY="/* Convert hbtn_0c_0 database, first_table table, and name field to UTF8 */ ALTER DATABASE hbtn_0c_0 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; ALTER TABLE first_table CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; ALTER TABLE first_table MODIFY name VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$CONVERT_TO_UTF8_QUERY"
