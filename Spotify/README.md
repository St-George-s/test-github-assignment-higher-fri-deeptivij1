# Student Guide: Running SQL Code in Your Project

Welcome to your SQL project! This guide will help you set up, write, and execute SQL code using the project environment.

### 1. Setting Up the Project

Before you start, make sure you’ve installed [Poetry](https://python-poetry.org/docs/#installation) on your computer. Poetry is a tool we’re using to manage the project’s dependencies.

1. **Navigate to the Project Directory**: Open your terminal and move to the project folder.
   
   ```bash
   cd databases/spotify
   ```

2. **Install Dependencies**: Run the following command to set up the necessary packages.

   ```bash
   poetry install
   ```

### 2. Writing Your SQL Code

You will be writing all of your SQL code in a file called `main.sql`. Here’s how to get started:

1. **Open `main.sql`**: Use VS Code or another text editor to open `main.sql` in the project directory.

2. **Write SQL Statements**: Inside `main.sql`, write any SQL commands you want to run. For example:

   ```sql
   -- Example SQL commands
   DESCRIBE ALL TABLES;
   ```

### 3. Running Your SQL Code

Once you’ve written your SQL code, you can execute it against the database.

#### Using the `run.sh` Script

We’ve set up a script named `run.sh` to make running your SQL commands easy.

1. **Make Sure the Script is Executable**:
   If you haven’t done this already, run the following command to allow execution of the script:

   ```bash
   chmod +x execute_sql.sh
   ```

2. **Run the Script**:
   Run the following command to execute the code in `main.sql`:

   ```bash
   ./execute_sql.sh
   ```

   This script will run `main.sql` against the database and display any output directly in the terminal.

### 4. Checking Your Results

After running the script, you’ll see any output from your SQL commands in the terminal. For example, if you used a `SELECT` statement, the results of that query will be printed.

---

### Additional Notes

- **Editing the Database**: Each time you modify `main.sql`, you can re-run `./execute_sql.sh` to apply changes to the database.
- **Debugging Tips**: If you encounter errors, double-check your SQL syntax in `main.sql` and ensure all necessary tables and fields are defined.
