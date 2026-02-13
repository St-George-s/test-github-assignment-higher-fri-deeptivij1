import mysql.connector
from pathlib import Path
from rich.console import Console
from rich.table import Table
from rich.panel import Panel
from rich.text import Text

console = Console()
SQL_FILE = Path(__file__).with_name("main.sql")

def split_statements(text: str):
    lines = []
    for line in text.splitlines():
        stripped = line.strip()
        if stripped.startswith("--") or stripped.startswith("#"):
            continue
        if stripped:
            lines.append(line)
    text = "\n".join(lines)
    parts = [p.strip() for p in text.split(';')]
    return [p + ';' for p in parts if p]

def main():
    console.print(Panel.fit("🚀 [bold cyan]SQL Runner Started[/bold cyan]", style="cyan"))

    conn = mysql.connector.connect(
        host="127.0.0.1",
        user="student",
        password="studentpw",
        database="SwimClubDB",
        port=3306
    )
    cur = conn.cursor(buffered=True)

    try:
        if SQL_FILE.exists():
            sql_text = SQL_FILE.read_text(encoding="utf-8")
            statements = split_statements(sql_text)

            for stmt in statements:
                if not stmt.strip():
                    continue
                console.rule(f"[bold yellow]Executing SQL[/bold yellow]")
                console.print(Text(stmt, style="bold green"))

                cur.execute(stmt)

                if cur.with_rows:  # SELECT, SHOW, DESCRIBE etc
                    rows = cur.fetchall()
                    cols = [d[0] for d in cur.description] if cur.description else []
                    if cols:
                        table = Table(show_header=True, header_style="bold magenta")
                        for col in cols:
                            table.add_column(col)
                        for r in rows:
                            table.add_row(*[str(x) for x in r])
                        console.print(table)
                else:
                    conn.commit()
                    console.print("[green]✓ Query executed successfully[/green]")

    except Exception as e:
        console.print(f"[bold red]❌ ERROR:[/bold red] {e}")
    finally:
        cur.close()
        conn.close()
        console.print(Panel.fit("✅ [bold cyan]All Done[/bold cyan]", style="green"))

if __name__ == "__main__":
    main()
