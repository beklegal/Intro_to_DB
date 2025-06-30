#!/usr/bin/env python3
"""
MySQLServer.py
Creates the database `alx_book_store` if it does not already exist.
No SELECT or SHOW statements are used.
"""

import mysql.connector

def create_database():
    """Connect to MySQL server and create `alx_book_store` database."""
    connection = None
    cursor = None

    try:
        # Adjust these credentials if needed
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="your_password"  # replace with your MySQL root password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error while connecting to MySQL: {err}")

    finally:
        if cursor is not None:
            cursor.close()
        if connection is not None and connection.is_connected():
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
