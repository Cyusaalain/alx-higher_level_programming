#!/bin/bash
# Task: Create the database hbtn_0c_0 on MySQL server

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"

# MySQL query to create database if it doesn't exist
MYSQL_QUERY="/* Create database hbtn_0c_0 if not exists */ CREATE DATABASE IF NOT EXISTS hbtn_0c_0;"

# Execute MySQL query
mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "$MYSQL_QUERY"
