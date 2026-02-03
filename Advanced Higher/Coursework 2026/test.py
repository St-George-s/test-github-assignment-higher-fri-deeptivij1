import mysql.connector

# (1) OPEN
conn = mysql.connector.connect(
    host="127.0.0.1",
    user="student",
    password="studentpw",
    database="project1",
    port=3306
)
cur = conn.cursor()

# # (2) EXECUTE (DML)
# cur.execute("INSERT INTO pupils(name, age) VALUES (%s, %s)", ("Grace Hopper", 19))
# conn.commit()

# (3) DISPLAY (SELECT + basic formatting)
# cur.execute("INSERT INTO pupils(name, age) VALUES (%s, %s)", ("Grace Hopper", 19))

# cur.execute("""
# SELECT d.fullName, d.speciality, d.roomNo
# FROM Doctor d
# WHERE fullName LIKE "Dr. Nadia Al-Sayed";
#  """)

myVar = "Dr. Nadia Al-Sayed"
myVarTwo = "Dr. Julia Roberts"

cur.execute("""
SELECT d.fullName, d.speciality, d.roomNo
FROM Doctor d
WHERE fullName LIKE %s OR
      fullName LIKE %s;
""", (myVar,myVarTwo))
# need comma even for just 1


cols = [d[0] for d in cur.description]
print(" | ".join(cols))
for row in cur.fetchall():
  print(" | ".join(str(x) for x in row))

# (4) CLOSE
cur.close()
conn.close()




