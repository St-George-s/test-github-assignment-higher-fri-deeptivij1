import sqlite3
import traceback  # Import the traceback module
import textwrap
from prettytable import PrettyTable
import subprocess

# ANSI escape codes for text formatting
BOLD = "\033[1m"
RED = "\033[91m"
GREEN = "\033[92m"
RESET = "\033[0m"


def check_db_initialised(conn):
  cursor = conn.cursor()
  cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
  tables = cursor.fetchall()
  return bool(
      tables)  # Returns True if there is at least one table, otherwise False


def describe_all_tables(conn):
  cursor = conn.cursor()
  cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
  tables = cursor.fetchall()
  for table in tables:
    table_name = table[0]
    describe_table(conn, table_name)
    print("\n")  # Print a newline between tables for readability


def describe_table(conn, table_name):
  print(f"{BOLD}Description of table: {table_name}{RESET}\n")  # Print table name
  cursor = conn.cursor()
  
  # Fetch column details
  cursor.execute(f"PRAGMA table_info({table_name})")
  column_details = {row[1]: (row[2], "PK" if row[5] else "None") for row in cursor.fetchall()}
  
  # Fetch foreign key details
  cursor.execute(f"PRAGMA foreign_key_list({table_name})")
  for row in cursor.fetchall():
      column_name = row[3]
      if column_name in column_details:
          column_details[column_name] = (column_details[column_name][0], "FK")
  
  x = PrettyTable()
  x.field_names = ["Column ID", "Column Name", "Data Type", "Type of Key"]
  
  for i, (column_name, (data_type, key_type)) in enumerate(column_details.items()):
      x.add_row([i, column_name, data_type, key_type or ""])
  
  print(x)


def format_sql(sql):
  # Replace keywords with keywords followed by a newline and indentation
  keywords = [
      "SELECT", "FROM", "WHERE", "JOIN", "AND", "OR", "GROUP BY", "ORDER BY",
      "UPDATE", "SET"
  ]
  for keyword in keywords:
    sql = sql.replace(keyword, f"\n\t{keyword}")
  return sql


def execute_sql(conn, sql):
  sql = sql.strip()
  if not sql:
    return  # Skip empty statements

  # Check for missing semicolon
  if not sql.endswith(';'):
    print(f"{RED}Error: Missing semicolon at the end of the query.{RESET}")
    return
  
  # Handle DESCRIBE TABLE command
  if sql.upper().startswith("DESCRIBE TABLE"):
    # Remove the semicolon at the end, if present
    sql = sql.rstrip(';')
    # Split the SQL command by spaces and get the third word
    table_name = sql.split()[2]
    describe_table(conn, table_name)
    return

  # Handle DESCRIBE ALL TABLES command
  if sql.upper() == "DESCRIBE ALL TABLES;":
    describe_all_tables(conn)
    return

  # Format the SQL text for better readability
  formatted_sql = format_sql(sql)
  print(f"\n{BOLD}Executing SQL statement:{RESET}\n{formatted_sql}\n")

  try:
    cursor = conn.cursor()
    cursor.execute(sql)
    conn.commit()

    print(f"{GREEN}Execution successful.{RESET}\n")
    if sql.upper().startswith("SELECT"):
      # Initialize a PrettyTable object
      x = PrettyTable()
      # Get column names from the cursor description attribute
      x.field_names = [desc[0] for desc in cursor.description]
      # Add rows to the table
      for row in cursor.fetchall():
        # Wrap text for each cell in the row if it is a string and longer than a certain length
          wrapped_row = [textwrap.fill(str(cell), width=15) if isinstance(cell, str) else cell for cell in row]
          x.add_row(wrapped_row)
      print(x)
    else:
      print(f"Rows affected: {cursor.rowcount}")

  except Exception as e:
    print(f"{RED}Error: {e}{RESET}")
    print(f"{BOLD}Traceback:{RESET}")  # Print the word "Traceback"
    traceback.print_exc()  # Print the traceback


def main():
  conn = sqlite3.connect('./database.db')

  if not check_db_initialised(conn):
    print("Database is not initialised. Running setup.py...")
    subprocess.run(['python', './setup/setup.py'])

  sql_commands = []
  current_command = ""

  with open('./main.sql', 'r') as file:
    lines = file.readlines()

  for line in lines:
    stripped_line = line.strip()
    # Ignore comment lines and empty lines
    if stripped_line and not stripped_line.startswith('--'):
      current_command += stripped_line + " "
      # If the line ends with a semicolon, it's the end of the command
      if stripped_line.endswith(';'):
        sql_commands.append(current_command.strip())
        current_command = ""

  # Check for any remaining SQL code that doesn't end with a semicolon
  if current_command.strip():
    print(f"{RED}Error: Missing semicolon at the end of the query:{RESET}")
    print(current_command)
    return

  for sql in sql_commands:
    if sql:  # Skip empty statements
      execute_sql(conn, sql)

  conn.close()


if __name__ == "__main__":
  main()
