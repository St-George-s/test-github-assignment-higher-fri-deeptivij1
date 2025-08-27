import mysql.connector
from pathlib import Path

SQL_FILE = Path(__file__).with_name("main.sql")

def split_statements(text: str):
    parts = [p.strip() for p in text.split(';')]
    return [p + ';' for p in parts if p]

def main():
    conn = mysql.connector.connect(
        host="127.0.0.1",
        user="student",
        password="studentpw",
        database="project1",
        port=3306
    )
    cur = conn.cursor()

    if SQL_FILE.exists():
        for stmt in split_statements(SQL_FILE.read_text(encoding="utf-8")):
            if not stmt.strip():
                continue
            print("\n-- Executing --\n" + stmt)
            cur.execute(stmt)
            if stmt.lstrip().upper().startswith("SELECT"):
                rows = cur.fetchall()
                cols = [d[0] for d in cur.description] if cur.description else []
                print("Columns:", cols)
                for r in rows:
                    print(r)
            else:
                conn.commit()
                print("OK")

    cur.close(); conn.close()
    print("\n-- Done --")

if __name__ == "__main__":
    main()
