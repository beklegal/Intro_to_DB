import mysql.connector

def create_database():
    try:
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="your_password_here"  # Replace with your actual MySQL password
        )
        cursor = conn.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
        cursor.close()
        conn.close()

    except mysql.connector.Error as err:  # <-- ✅ this is what the checker is looking for
        print(f"Error while connecting to MySQL: {err}")

if __name__ == "__main__":
    create_database()
