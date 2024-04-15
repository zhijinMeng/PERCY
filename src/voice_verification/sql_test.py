import sqlite3

# Create a connection to the SQLite database (aquarium.db)
connection = sqlite3.connect("aquarium.db")

# Create a cursor (used to execute SQL commands)
cursor = connection.cursor()

# Execute an SQL command to create a table (if it doesn't exist)
cursor.execute("""
    CREATE TABLE IF NOT EXISTS fish (
        id INTEGER PRIMARY KEY,
        name TEXT,
        species TEXT,
        length REAL
    )
""")

# Insert data into the 'fish' table
cursor.execute("""
    INSERT INTO fish (name, species, length)
    VALUES (?, ?, ?)
""", ("Nemo", "Clownfish", 3.5))

# Commit the changes to the database
connection.commit()

# Close the cursor and the connection
cursor.close()
connection.close()
