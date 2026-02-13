import sqlite3
import os 
import glob

def execute_sql_file(conn, full_path):
    with open(full_path, 'r') as file:  # Use the full path here
        sql_commands = file.read().split(';')
    for sql in sql_commands:
        sql = sql.strip()
        if sql:
            try:
                cursor = conn.cursor()
                cursor.execute(sql)
                conn.commit()
                print(f'Successfully executed commands from {full_path}')
            except Exception as e:
                print(f'Error executing commands from {full_path}: {e}')

def main():
  # Connect to the database file
  conn = sqlite3.connect('./database.db')

  dir_path = os.path.dirname(os.path.realpath(__file__))
  
  # Execute SQL commands from each .sql and .txt file in the directory
  for file_path in glob.glob(dir_path + '/*.sql') + glob.glob(dir_path + '/*.txt'):
      full_path = os.path.join(dir_path, file_path)  # Construct the full path
      execute_sql_file(conn, full_path)

  # Close the connection
  conn.close()


if __name__ == "__main__":
    main()
